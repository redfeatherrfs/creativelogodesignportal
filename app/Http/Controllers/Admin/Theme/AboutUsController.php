<?php

namespace App\Http\Controllers\Admin\Theme;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\theme\AboutUsRequest;
use App\Models\AboutUs;
use App\Models\FileManager;
use App\Models\LandingPageSetting;
use App\Traits\ResponseTrait;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AboutUsController extends Controller
{
    use ResponseTrait;

    public function index(Request $request)
    {
        $data['pageTitle'] = __('About Us');
        $data['activeAboutUs'] = 'active';
        $data['aboutUsData'] = AboutUs::first();
        $data['collection'] = LandingPageSetting::all();
        return view('admin.themes.about-us', $data);
    }

    public function ourMissionStore(Request $request)
    {
        DB::beginTransaction();
        try {

            $id = $request->id;
            $aboutUsOurMission = $id ? AboutUs::findOrFail($id) : new AboutUs();

            $aboutUsOurMission->our_mission = $request->our_mission;
            $aboutUsOurMission->our_vision = $request->our_vision;
            $aboutUsOurMission->our_goal = $request->our_goal;

            if ($request->hasFile('banner_image')) {
                $fileManager = new FileManager();
                $uploadedIcon = $fileManager->upload('about-us', $request->banner_image);
                if (!is_null($uploadedIcon)) {
                    $aboutUsOurMission->banner_image = $uploadedIcon->id;
                } else {
                    DB::rollBack();
                    return $this->error([], __('Something went wrong while uploading the banner image.'));
                }
            }
            if ($request->hasFile('image')) {
                $fileManager = new FileManager();
                $uploadedIcon = $fileManager->upload('about-us', $request->image);
                if (!is_null($uploadedIcon)) {
                    $aboutUsOurMission->image = $uploadedIcon->id;
                } else {
                    DB::rollBack();
                    return $this->error([], __('Something went wrong while uploading the image.'));
                }
            }

            $aboutUsOurMission->save();

            DB::commit();

            $message = $id ? __('Updated Successfully') : __('Created Successfully');
            return $this->success([], getMessage($message));

        } catch (Exception $e) {
            DB::rollBack();
            return $this->error([], __('Something went wrong! Please try again.'));
        }
    }


    public function imageStore(Request $request)
    {
        DB::beginTransaction();
        try {

            $id = $request->id;
            $imageStore = $id ? AboutUs::findOrFail($id) : new AboutUs();

            if ($request->hasFile('banner_image')) {
                $fileManager = new FileManager();
                $uploadedIcon = $fileManager->upload('about-us', $request->banner_image);
                if (!is_null($uploadedIcon)) {
                    $imageStore->banner_image = $uploadedIcon->id;
                } else {
                    DB::rollBack();
                    return $this->error([], __('Something went wrong while uploading the banner image.'));
                }
            }
            if ($request->hasFile('image')) {
                $fileManager = new FileManager();
                $uploadedIcon = $fileManager->upload('about-us', $request->image);
                if (!is_null($uploadedIcon)) {
                    $imageStore->image = $uploadedIcon->id;
                } else {
                    DB::rollBack();
                    return $this->error([], __('Something went wrong while uploading the image.'));
                }
            }

            $imageStore->save();

            DB::commit();

            $message = $id ? __('Updated Successfully') : __('Created Successfully');
            return $this->success([], getMessage($message));

        } catch (Exception $e) {
            DB::rollBack();
            return $this->error([], __('Something went wrong! Please try again.'));
        }
    }


    public function outTeamMemberStore(Request $request)
    {
        DB::beginTransaction();
        try {

            $id = $request->id;
            $aboutUsTeamMember = $id ? AboutUs::findOrFail($id) : new AboutUs();

            $teamMember = [];
            if ($request->has('team_member_name')) {
                foreach ($request->input('team_member_name') as $key => $title) {
                    $teamMemberData = [
                        'title' => $title,
                        'designation' => $request->input("team_member_designation.$key"),
                        'facebook' => $request->input("team_member_facebook_link.$key"),
                        'linkedin' => $request->input("team_member_linkedin_link.$key"),
                        'twitter' => $request->input("team_member_twitter_link.$key"),
                    ];

                    $oldPhoto = $request->input("old_team_member_image.$key");

                    if ($request->hasFile("team_member_image.$key")) {
                        $fileManager = new FileManager();
                        $uploadedImage = $fileManager->upload('about-us-team-member', $request->file("team_member_image.$key"));
                        if (!is_null($uploadedImage)) {
                            $teamMemberData['image'] = $uploadedImage->id;
                        } else {
                            DB::rollBack();
                            return $this->error([], __('Something went wrong while uploading the our touch point icon.'));
                        }
                    } elseif ($oldPhoto) {
                        $teamMemberData['image'] = $oldPhoto;
                    } else {
                        $teamMemberData['image'] = null;
                    }

                    $teamMember[] = $teamMemberData;
                }
            }
            if (empty($teamMember)) {
                $teamMember[] = [
                    'title' => 'Name',
                ];
            }

            $aboutUsTeamMember->team_member = $teamMember;

            $aboutUsTeamMember->save();

            DB::commit();

            $message = $id ? __('Updated Successfully') : __('Created Successfully');
            return $this->success([], getMessage($message));

        } catch (Exception $e) {
            DB::rollBack();
            return $this->error([], __('Something went wrong! Please try again.'));
        }
    }

}






