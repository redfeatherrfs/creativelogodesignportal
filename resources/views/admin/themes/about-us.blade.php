@extends('admin.layouts.app')
@push('title')
    {{ $pageTitle }}
@endpush
@section('content')
    <div class="p-sm-30 p-15">
        <div class="">
            <div class="bg-white p-sm-25 mb-20 p-15 bd-one bd-c-stroke bd-ra-8 shadow">
                <div class="email-inbox__area">
                    <div class="bd-b-one bd-c-black-stroke pb-20 mb-20 d-flex align-items-center flex-wrap justify-content-between g-10">
                        <h2 class="fs-18 fw-600 lh-22 text-title-text">{{ __('About Us Section')}} <span class="text-button zForm-label-alt">{{__('/ Visible on landing & details pages')}}</span></h2>
                    </div>
                    <form class="ajax" action="{{ route('admin.setting.configuration-landing-page-settings.update') }}" method="POST"
                          enctype="multipart/form-data" data-handler="commonResponseWithPageLoad">
                        @csrf
                        <div class="row rg-20">
                            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 mb-3">
                                <label for="label" class="zForm-label-alt">{{ __('Sub Title') }}</label>
                                <input type="hidden" name="about_us_sub_title" value="">
                                <select class="primary-form-control sf-select-modal-label" multiple name="about_us_sub_title[]">
                                    @php
                                        $subTitles = json_decode(landingPageSetting($collection, 'about_us_sub_title') ?? '');
                                    @endphp

                                    @if (!empty($subTitles) && is_array($subTitles))
                                        @foreach ($subTitles as $subtitle)
                                            <option value="{{ $subtitle }}" selected>{{ $subtitle }}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 mb-3">
                                <label class="zForm-label-alt">{{ __('Title') }}</label>
                                <input type="text" name="about_us_title"
                                       value="{{ landingPageSetting($collection, 'about_us_title') }}"
                                       class="form-control zForm-control">
                            </div>
                            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-12 mb-3">
                                <label class="zForm-label-alt">{{ __('Details') }}<span class="text-button">@if(getOption('app_theme_style') == THEME_HOME_THREE){{__('/ Visible only on details page')}}@endif</span></label>
                                <textarea class="form-control zForm-control"  name="about_us_details" rows="6" cols="50">{{ landingPageSetting($collection,'about_us_details') }}</textarea>
                            </div>
                            @if(getOption('app_theme_style') != THEME_HOME_ONE)
                                <div class="bd-b-one bd-c-black-stroke pb-20 d-flex align-items-center flex-wrap justify-content-between g-10">
                                    <h2 class="fs-18 fw-600 lh-22 text-title-text">{{ __('About Us Extra Features') }}<span class="text-button zForm-label-alt">@if(getOption('app_theme_style') == THEME_HOME_THREE) {{__('/ Visible only on details page')}} @elseif(getOption('app_theme_style') == THEME_HOME_TWO){{__('/ Visible only on landing page')}} @endif </span></h2>
                                </div>

                                <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 mb-3">
                                    <label class="zForm-label-alt">{{ __('Extra Feature Title 1') }}</label>
                                    <input type="text" name="about_us_extra_feature_title_1"
                                           value="{{ landingPageSetting($collection, 'about_us_extra_feature_title_1') }}"
                                           class="form-control zForm-control">
                                </div>
                                <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 mb-3">
                                    <label class="zForm-label-alt">{{ __('Extra Feature Title 2') }}</label>
                                    <input type="text" name="about_us_extra_feature_title_2"
                                           value="{{ landingPageSetting($collection, 'about_us_extra_feature_title_2') }}"
                                           class="form-control zForm-control">
                                </div>
                                <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 mb-3">
                                    <label class="zForm-label-alt">{{ __('Extra Feature Title 3') }}</label>
                                    <input type="text" name="about_us_extra_feature_title_3"
                                           value="{{ landingPageSetting($collection, 'about_us_extra_feature_title_3') }}"
                                           class="form-control zForm-control">
                                </div>
                                <div class="col-xl-4 col-md-4 col-sm-6">
                                    <div class="primary-form-group">
                                        <div class="primary-form-group-wrap zImage-upload-details">
                                            <div class="zImage-inside">
                                                <div class="d-flex pb-12">
                                                    <img src="{{ asset('assets/images/icon/upload-img-1.svg') }}"
                                                         alt="" />
                                                </div>
                                                <p class="fs-15 fw-500 lh-16 text-1b1c17">
                                                    {{ __('Drag & drop files here') }}
                                                </p>
                                            </div>
                                            <label for="zImageUpload" class="form-label">{{ __('Extra Feature Icon 1') }}</label>
                                            <div class="upload-img-box">
                                                @if (landingPageSetting($collection,'about_us_extra_feature_icon_1'))
                                                    <img src="{{ getFileUrl(landingPageSetting($collection,'about_us_extra_feature_icon_1'))}}" />
                                                @else
                                                    <img src="" />
                                                @endif
                                                <input type="file" name="about_us_extra_feature_icon_1" id="zImageUpload"
                                                       accept="image/*,video/*" onchange="previewFile(this)" />
                                            </div>
                                        </div>
                                    </div>
                                    @if ($errors->has('about_us_extra_feature_icon_1'))
                                        <span class="text-danger"><i class="fas fa-exclamation-triangle"></i>
                                            {{ $errors->first('about_us_extra_feature_icon_1') }}</span>
                                    @endif
                                    <p>
                                    <span class="text-black">
                                        <span class="text-black">{{ __('Recommend Size') }}:</span>
                                        30 x 30
                                    </span>
                                    </p>
                                </div>
                                <div class="col-xl-4 col-md-4 col-sm-6">
                                    <div class="primary-form-group">
                                        <div class="primary-form-group-wrap zImage-upload-details">
                                            <div class="zImage-inside">
                                                <div class="d-flex pb-12">
                                                    <img src="{{ asset('assets/images/icon/upload-img-1.svg') }}"
                                                         alt="" />
                                                </div>
                                                <p class="fs-15 fw-500 lh-16 text-1b1c17">
                                                    {{ __('Drag & drop files here') }}
                                                </p>
                                            </div>
                                            <label for="zImageUpload" class="form-label">{{ __('Extra Feature Icon 2') }}</label>
                                            <div class="upload-img-box">
                                                @if (landingPageSetting($collection,'about_us_extra_feature_icon_2'))
                                                    <img src="{{ getFileUrl(landingPageSetting($collection,'about_us_extra_feature_icon_2')) }}" />
                                                @else
                                                    <img src="" />
                                                @endif
                                                <input type="file" name="about_us_extra_feature_icon_2" id="zImageUpload"
                                                       accept="image/*,video/*" onchange="previewFile(this)" />
                                            </div>
                                        </div>
                                    </div>
                                    @if ($errors->has('about_us_extra_feature_icon_2'))
                                        <span class="text-danger"><i class="fas fa-exclamation-triangle"></i>
                                            {{ $errors->first('about_us_extra_feature_icon_2') }}</span>
                                    @endif
                                    <p>
                                    <span class="text-black">
                                        <span class="text-black">{{ __('Recommend Size') }}:</span>
                                        30 x 30
                                    </span>
                                    </p>
                                </div>
                                <div class="col-xl-4 col-md-4 col-sm-6">
                                    <div class="primary-form-group">
                                        <div class="primary-form-group-wrap zImage-upload-details">
                                            <div class="zImage-inside">
                                                <div class="d-flex pb-12">
                                                    <img src="{{ asset('assets/images/icon/upload-img-1.svg') }}"
                                                         alt="" />
                                                </div>
                                                <p class="fs-15 fw-500 lh-16 text-1b1c17">
                                                    {{ __('Drag & drop files here') }}
                                                </p>
                                            </div>
                                            <label for="zImageUpload" class="form-label">{{ __('Extra Feature Icon 3') }}</label>
                                            <div class="upload-img-box">
                                                @if (landingPageSetting($collection,'about_us_extra_feature_icon_3'))
                                                    <img src="{{ getFileUrl(landingPageSetting($collection,'about_us_extra_feature_icon_3')) }}" />
                                                @else
                                                    <img src="" />
                                                @endif
                                                <input type="file" name="about_us_extra_feature_icon_3" id="zImageUpload"
                                                       accept="image/*,video/*" onchange="previewFile(this)" />
                                            </div>
                                        </div>
                                    </div>
                                    @if ($errors->has('about_us_extra_feature_icon_3'))
                                        <span class="text-danger"><i class="fas fa-exclamation-triangle"></i>
                                            {{ $errors->first('about_us_extra_feature_icon_3') }}</span>
                                    @endif
                                    <p>
                                    <span class="text-black">
                                        <span class="text-black">{{ __('Recommend Size') }}:</span>
                                        30 x 30
                                    </span>
                                    </p>
                                </div>
                            @endif
                        </div>
                        <div class="bd-c-black-stroke justify-content-between align-items-center text-end pt-15">
                            <button type="submit" class="py-10 px-26 bg-button bd-one bd-c-button bd-ra-8 fs-15 fw-600 lh-25 text-white">{{__('Submit')}}</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="bg-white p-sm-25 mb-20 p-15 bd-one bd-c-stroke bd-ra-8 shadow">
                <div class="email-inbox__area">
                    <div class="bd-b-one bd-c-black-stroke pb-20 mb-20 d-flex align-items-center flex-wrap justify-content-between g-10">
                        <h2 class="fs-18 fw-600 lh-22 text-title-text">{{ __('Our Journey') }}<span class="text-button zForm-label-alt">{{__('/ Visible only on details page')}}</span></h2>
                    </div>
                    <form class="ajax" action="{{ route('admin.setting.configuration-landing-page-settings.update') }}" method="POST"
                          enctype="multipart/form-data" data-handler="commonResponseWithPageLoad">
                        @csrf
                        <div class="row rg-20">
                            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 mb-3">
                                <label for="label" class="zForm-label-alt">{{ __('Sub Title') }}</label>
                                <input type="hidden" name="about_us_details_our_journey_sub_title" value="">
                                <select class="primary-form-control sf-select-modal-label" multiple name="about_us_details_our_journey_sub_title[]">
                                    @php
                                        $subTitles = json_decode(landingPageSetting($collection, 'about_us_details_our_journey_sub_title') ?? '');
                                    @endphp

                                    @if (!empty($subTitles) && is_array($subTitles))
                                        @foreach ($subTitles as $subtitle)
                                            <option value="{{ $subtitle }}" selected>{{ $subtitle }}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 mb-3">
                                <label class="zForm-label-alt">{{ __('Title') }}</label>
                                <input type="text" name="about_us_details_our_journey_title"
                                       value="{{ landingPageSetting($collection, 'about_us_details_our_journey_title') }}"
                                       class="form-control zForm-control">
                            </div>
                            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-12 mb-3">
                                <label class="zForm-label-alt">{{ __('Details') }}</label>
                                <textarea class="form-control zForm-control"  name="about_us_details_our_journey_details" rows="6" cols="50">{{ landingPageSetting($collection,'about_us_details_our_journey_details') }}</textarea>
                            </div>
                        </div>
                        <div class="bd-c-black-stroke justify-content-between align-items-center text-end pt-15">
                            <button type="submit" class="py-10 px-26 bg-button bd-one bd-c-button bd-ra-8 fs-15 fw-600 lh-25 text-white">{{__('Submit')}}</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row rg-20">
                <div class="col-xl-12">
                    <form class="ajax" action="{{ route('admin.theme-settings.about-us.image.store')}}"
                          method="POST" enctype="multipart/form-data" data-handler="commonResponseWithPageLoad">
                        @csrf
                        <input type="hidden" value="{{$aboutUsData->id ?? ''}}" name="id">
                        <div class="bg-white p-sm-25 mb-20 p-15 bd-one bd-c-stroke bd-ra-8 shadow">
                            <div class="row pt-10">
                                <div class="col-6">
                                    <div class="primary-form-group mt-3">
                                        <div class="primary-form-group-wrap zImage-upload-details mw-100">
                                            <div class="zImage-inside text-center">
                                                <div class="d-flex justify-content-center pb-12">
                                                    <img src="{{ asset('assets/images/icon/upload-img-1.svg') }}" alt="" />
                                                </div>
                                                <p class="fs-15 fw-500 lh-16 text-1b1c17">
                                                    {{ __('Drag & drop files here') }}
                                                </p>
                                            </div>
                                            <label for="bannerImage" class="zForm-label-alt">
                                                {{ __('Banner Image / Our Journey Image') }}
                                                <span class="text-mime-type">@if(getOption('app_theme_style') == THEME_HOME_THREE){{__('/ Visible on landing & details pages')}}@else {{__('/ Visible only on details page')}}@endif {{ __('(jpeg, png, jpg, svg, webp)') }}</span>

                                            </label>
                                            <div class="upload-img-box text-center">
                                                <img src="{{ (isset($aboutUsData) && !is_null($aboutUsData->banner_image)) ? getFileUrl($aboutUsData->banner_image) : '' }}" id="banner_image"/>
                                                <input type="file" name="banner_image" id="bannerImage" accept="image/*"
                                                       onchange="previewFile(this)" />
                                            </div>
                                            <span
                                                class="fs-12 fw-400 lh-24 text-main-color pt-3">{{__("Recommended: 1326 px / 520 px")}}</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="primary-form-group mt-3">
                                        <div class="primary-form-group-wrap zImage-upload-details mw-100">
                                            <div class="zImage-inside text-center">
                                                <div class="d-flex justify-content-center pb-12">
                                                    <img src="{{ asset('assets/images/icon/upload-img-1.svg') }}" alt="" />
                                                </div>
                                                <p class="fs-15 fw-500 lh-16 text-1b1c17">
                                                    {{ __('Drag & drop files here') }}
                                                </p>
                                            </div>
                                            <label for="image" class="zForm-label-alt">
                                                {{ __('Image for Mission, Vision & Goals Section') }}
                                                <span class="text-mime-type">{{__('/ Visible only on details page')}} {{ __('(jpeg, png, jpg, svg, webp)') }}</span>

                                            </label>
                                            <div class="upload-img-box text-center">
                                                <img src="{{ (isset($aboutUsData) && !is_null($aboutUsData->image)) ? getFileUrl($aboutUsData->image) : '' }}" id="image"/>
                                                <input type="file" name="image" id="image" accept="image/*"
                                                       onchange="previewFile(this)" />
                                            </div>
                                            <span
                                                class="fs-12 fw-400 lh-24 text-main-color pt-3">{{__("Recommended: 690 px / 540 px")}}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="bd-c-black-stroke justify-content-between align-items-center text-end pt-15">
                                <button type="submit" class="py-10 px-26 bg-button bd-one bd-c-button bd-ra-8 fs-15 fw-600 lh-25 text-white">{{__('Submit')}}</button>
                            </div>
                        </div>
                    </form>
                    @if(getOption('app_theme_style') == THEME_HOME_THREE)
                        <div class="bg-white p-sm-25 mb-20 p-15 bd-one bd-c-stroke bd-ra-8 shadow">
                            <div class="bd-b-one bd-c-black-stroke pb-20 mb-20 d-flex align-items-center flex-wrap justify-content-between g-10">
                                <h2 class="fs-18 fw-600 lh-22 text-title-text">{{ __('Mission, Vision & Goals Section') }}<span class="text-button zForm-label-alt">{{__('/ Visible only on details page')}}</span></h2>
                            </div>
                            <form class="ajax" action="{{ route('admin.setting.configuration-landing-page-settings.update') }}" method="POST"
                                  enctype="multipart/form-data" data-handler="commonResponseWithPageLoad">
                                @csrf
                                <div class="row rg-20">
                                    <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 mb-3">
                                        <label for="label" class="zForm-label-alt">{{ __('Sub Title') }}</label>
                                        <input type="hidden" name="about_us_details_our_mission_sub_title" value="">
                                        <select class="primary-form-control sf-select-modal-label" multiple name="about_us_details_our_mission_sub_title[]">
                                            @php
                                                $subTitles = json_decode(landingPageSetting($collection, 'about_us_details_our_mission_sub_title') ?? '');
                                            @endphp

                                            @if (!empty($subTitles) && is_array($subTitles))
                                                @foreach ($subTitles as $subtitle)
                                                    <option value="{{ $subtitle }}" selected>{{ $subtitle }}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                    </div>
                                    <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 mb-3">
                                        <label class="zForm-label-alt">{{ __('Title') }}</label>
                                        <input type="text" name="about_us_details_our_mission_title"
                                               value="{{ landingPageSetting($collection, 'about_us_details_our_mission_title') }}"
                                               class="form-control zForm-control">
                                    </div>
                                    <div class="col-sm-6 col-md-6 col-lg-6 col-xl-12 mb-3">
                                        <label class="zForm-label-alt">{{ __('Details') }}</label>
                                        <textarea class="form-control zForm-control"  name="about_us_details_our_mission_details" rows="6" cols="50">{{ landingPageSetting($collection,'about_us_details_our_mission_details') }}</textarea>
                                    </div>
                                    <div class="bd-c-black-stroke justify-content-between align-items-center text-end pt-15">
                                        <button type="submit" class="py-10 px-26 bg-button bd-one bd-c-button bd-ra-8 fs-15 fw-600 lh-25 text-white">{{__('Submit')}}</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    @endif
                    <div class="bg-white p-sm-25 mb-20 p-15 bd-one bd-c-stroke bd-ra-8 shadow">
                        <form class="ajax" action="{{ route('admin.theme-settings.about-us.our.mission.store')}}"
                              method="POST" enctype="multipart/form-data" data-handler="commonResponseWithPageLoad">
                            @csrf
                            <input type="hidden" value="{{$aboutUsData->id ?? ''}}" name="id">
                            <div class="bd-b-one bd-c-black-stroke pb-20 mb-20 d-flex align-items-center flex-wrap justify-content-between g-10">
                                <h2 class="fs-18 fw-600 lh-22 text-title-text">{{ __('Our Mission Section') }}<span class="text-button zForm-label-alt">{{__('/ Visible only on details page')}}</span></h2>
                            </div>
                            <div class="row pt-10">
                                <div class="col-6">
                                    <label for="ourMissionTitle" class="zForm-label-alt">{{ __('Our Mission Title') }} </label>
                                    <input type="text" name="our_mission[title]" id="ourMissionTitle" placeholder="{{__('Our Mission Title')}}" value="{{$aboutUsData->our_mission['title'] ?? ''}}"
                                           class="form-control zForm-control">
                                </div>
                                <div class="col-xxl-6 col-lg-6 pt-4">
                                    <label for="ourMissionDetails" class="zForm-label-alt">{{ __('Our Mission Details') }} </label>
                                    <textarea name="our_mission[details]" id="ourMissionDetails" class="form-control zForm-control summernoteOne">{!! $aboutUsData->our_mission['details'] ?? '' !!}</textarea>
                                </div>
                            </div>
                            <div class="bd-b-one bd-c-black-stroke pb-20 mb-20 d-flex align-items-center flex-wrap justify-content-between g-10">
                                <h2 class="fs-18 fw-600 lh-22 text-title-text">{{ __('Our Vision Section') }}<span class="text-button zForm-label-alt">{{__('/ Visible only on details page')}}</span></h2>
                            </div>
                            <div class="row pt-10">
                                <div class="col-6">
                                    <label for="ourVisionTitle" class="zForm-label-alt">{{ __('Our Vision Title') }} </label>
                                    <input type="text" name="our_vision[title]" id="ourVisionTitle" placeholder="{{__('Our Vision Title')}}" value="{{$aboutUsData->our_vision['title'] ?? ''}}"
                                           class="form-control zForm-control our_vision">
                                </div>
                                <div class="col-xxl-6 col-lg-6 pt-4">
                                    <label for="ourVisionDetails" class="zForm-label-alt">{{ __('Our Vision Details') }} </label>
                                    <textarea name="our_vision[details]" id="ourVisionDetails" class="form-control zForm-control summernoteOne">{!! $aboutUsData->our_vision['details'] ?? '' !!}</textarea>
                                </div>
                            </div>
                            <div class="bd-b-one bd-c-black-stroke pb-20 mb-20 d-flex align-items-center flex-wrap justify-content-between g-10">
                                <h2 class="fs-18 fw-600 lh-22 text-title-text">{{ __('Our Goal Section') }}<span class="text-button zForm-label-alt">{{__('/ Visible only on details page')}}</span></h2>
                            </div>
                            <div class="row pt-10">
                                <div class="col-6">
                                    <label for="ourGoalTitle" class="zForm-label-alt">{{ __('Our Goal Title') }} </label>
                                    <input type="text" name="our_goal[title]" id="ourGoalTitle" placeholder="{{__('Our Goal Title')}}" value="{{$aboutUsData->our_goal['title'] ?? ''}}"
                                           class="form-control zForm-control">
                                </div>
                                <div class="col-xxl-6 col-lg-6 pt-4">
                                    <label for="ourGoalDetails" class="zForm-label-alt">{{ __('Our Goal Details') }} </label>
                                    <textarea name="our_goal[details]" id="ourGoalDetails" class="form-control zForm-control summernoteOne">{!! $aboutUsData->our_goal['details'] ?? '' !!}</textarea>
                                </div>
                            </div>
                            <div class="bd-c-black-stroke justify-content-between align-items-center text-end pt-15">
                                <button type="submit" class="py-10 px-26 bg-button bd-one bd-c-button bd-ra-8 fs-15 fw-600 lh-25 text-white">{{__('Submit')}}</button>
                            </div>
                        </form>
                    </div>
                    <div class="bg-white p-sm-25 mb-20 p-15 bd-one bd-c-stroke bd-ra-8 shadow">
                        <div class="bd-b-one bd-c-black-stroke pb-20 mb-20 d-flex align-items-center flex-wrap justify-content-between g-10">
                            <h2 class="fs-18 fw-600 lh-22 text-title-text">{{ __('Team Member Section') }}<span class="text-button zForm-label-alt">{{__('/ Visible only on details page')}}</span></h2>
                        </div>
                        <form class="ajax" action="{{ route('admin.setting.configuration-landing-page-settings.update') }}" method="POST"
                              enctype="multipart/form-data" data-handler="commonResponseWithPageLoad">
                            @csrf
                            <div class="row rg-20">
                                <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 mb-3">
                                    <label for="label" class="zForm-label-alt">{{ __('Sub Title') }}</label>
                                    <input type="hidden" name="about_us_details_team_member_sub_title" value="">
                                    <select class="primary-form-control sf-select-modal-label" multiple name="about_us_details_team_member_sub_title[]">
                                        @php
                                            $subTitles = json_decode(landingPageSetting($collection, 'about_us_details_team_member_sub_title') ?? '');
                                        @endphp

                                        @if (!empty($subTitles) && is_array($subTitles))
                                            @foreach ($subTitles as $subtitle)
                                                <option value="{{ $subtitle }}" selected>{{ $subtitle }}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                </div>
                                <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6 mb-3">
                                    <label class="zForm-label-alt">{{ __('Title') }}</label>
                                    <input type="text" name="about_us_details_team_member_title"
                                           value="{{ landingPageSetting($collection, 'about_us_details_team_member_title') }}"
                                           class="form-control zForm-control">
                                </div>
                                @if(getOption('app_theme_style') != THEME_HOME_ONE)
                                    <div class="col-sm-6 col-md-6 col-lg-6 col-xl-12 mb-3">
                                        <label class="zForm-label-alt">{{ __('Details') }}</label>
                                        <textarea class="form-control zForm-control"  name="about_us_details_team_member_details" rows="6" cols="50">{{ landingPageSetting($collection,'about_us_details_team_member_details') }}</textarea>
                                    </div>
                                @endif
                            </div>
                            <div class="bd-c-black-stroke justify-content-between align-items-center text-end pt-15">
                                <button type="submit" class="py-10 px-26 bg-button bd-one bd-c-button bd-ra-8 fs-15 fw-600 lh-25 text-white">{{__('Submit')}}</button>
                            </div>
                        </form>
                    </div>
                    <div class="p-sm-25 p-15 bd-one bd-c-stroke mb-20 bd-ra-10 bg-white shadow">
                        <form class="ajax" action="{{ route('admin.theme-settings.about-us.our.team.member.store')}}"
                              method="POST" enctype="multipart/form-data" data-handler="commonResponseWithPageLoad">
                            @csrf
                            <input type="hidden" value="{{$aboutUsData->id ?? ''}}" name="id">
                            <div id="about-us-block">
                                <div class="bd-b-one bd-c-black-stroke pb-20 mb-20 d-flex align-items-center flex-wrap justify-content-between g-10">
                                    <h2 class="fs-18 fw-600 lh-22 text-title-text">{{ __('Team Member Section') }}<span class="text-button zForm-label-alt">{{__('/ Visible only on details page')}}</span></h2>
                                    <button type="button" class="py-3 px-26 bg-button bd-one bd-c-button bd-ra-8 fs-15 fw-600 lh-25 text-white" id="addAboutUs">
                                        + {{__('Add More')}}
                                    </button>
                                </div>
                                @foreach($aboutUsData->team_member ?? [[]] as $index => $ourTeamMember)
                                    <input type="hidden" class="old_team_member_image" name="old_team_member_image[{{$index}}]" value="{{ $ourTeamMember['image'] ?? '' }}">
                                    <div class="about-us-item">
                                        <div class="row rg-20">
                                            <div class="col-md-4">
                                                <label for="team_member_name_{{$index}}" class="zForm-label">{{__('Name')}} </label>
                                                <input type="text" name="team_member_name[]" id="team_member_name_{{$index}}"
                                                       placeholder="{{__('Type name')}}"
                                                       value="{{$ourTeamMember['title'] ?? ''}}"
                                                       class="form-control team_member_name zForm-control">
                                            </div>
                                            <div class="col-md-4">
                                                <label for="team_member_designation_{{$index}}"
                                                       class="zForm-label">{{__('Designation')}} </label>
                                                <input type="text" name="team_member_designation[]"
                                                       id="team_member_designation_{{$index}}"
                                                       placeholder="{{__('Designation')}}"
                                                       value="{{$ourTeamMember['designation'] ?? ''}}"
                                                       class="form-control team_member_designation zForm-control">
                                            </div>
                                            <div class="col-md-4">
                                                <div class="image-block d-flex g-10 justify-content-between flex-column flex-xxl-row align-items-end align-items-xxl-center flex-xl-wrap flex-xl-nowrap">
                                                    <div class="w-100">
                                                        <label for="team_member_image_{{$index}}" class="zForm-label">{{__('Image')}}

                                                            @if($ourTeamMember['image'] ?? '')
                                                                <small class="preview-image-div">
                                                                    <a href="{{getFileUrl($ourTeamMember['image'])}}"
                                                                       target="_blank"><i class="fa-solid fa-eye"></i></a>
                                                                </small>
                                                            @endif
                                                        </label>
                                                        <div class="file-upload-one file-upload-one-alt d-flex flex-column g-10 w-100">
                                                            <label for="team_member_image_{{$index}}">
                                                                <p class="fileName fs-12 fw-500 lh-16 text-para-text">{{__('Choose Image to upload')}}</p>
                                                                <p class="fs-12 fw-500 lh-16 text-white">{{__('Browse File')}}</p>
                                                            </label>
                                                            <span
                                                                class="fs-12 fw-400 text-main-color">{{__('Recommended: (jpeg,png,jpg,svg,webp) | 273 px / 316 px')}}</span>
                                                            <div class="max-w-150 flex-shrink-0">
                                                                <input type="file" name="team_member_image[]" id="team_member_image_{{$index}}"
                                                                       accept="image/*"
                                                                       class="fileUploadInput team_member_image position-absolute invisible"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    @if($index > 0)
                                                        <button type="button"
                                                                class="removeAboutUs top-0 end-0 bg-transparent border-0 p-0 m-2 rounded-circle d-flex justify-content-center align-items-center">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20"
                                                                 fill="none">
                                                                <path
                                                                    d="M16.25 4.58334L15.7336 12.9376C15.6016 15.072 15.5357 16.1393 15.0007 16.9066C14.7361 17.2859 14.3956 17.6061 14.0006 17.8467C13.2017 18.3333 12.1325 18.3333 9.99392 18.3333C7.8526 18.3333 6.78192 18.3333 5.98254 17.8458C5.58733 17.6048 5.24667 17.284 4.98223 16.904C4.4474 16.1355 4.38287 15.0668 4.25384 12.9293L3.75 4.58334"
                                                                    stroke="#EF4444" stroke-width="1.5" stroke-linecap="round"/>
                                                                <path
                                                                    d="M2.5 4.58333H17.5M13.3797 4.58333L12.8109 3.40977C12.433 2.63021 12.244 2.24043 11.9181 1.99734C11.8458 1.94341 11.7693 1.89545 11.6892 1.85391C11.3283 1.66666 10.8951 1.66666 10.0287 1.66666C9.14067 1.66666 8.69667 1.66666 8.32973 1.86176C8.24842 1.90501 8.17082 1.95491 8.09774 2.01097C7.76803 2.26391 7.58386 2.66796 7.21551 3.47605L6.71077 4.58333"
                                                                    stroke="#EF4444" stroke-width="1.5" stroke-linecap="round"/>
                                                                <path d="M7.91669 13.75V8.75" stroke="#EF4444" stroke-width="1.5"
                                                                      stroke-linecap="round"/>
                                                                <path d="M12.0833 13.75V8.75" stroke="#EF4444" stroke-width="1.5"
                                                                      stroke-linecap="round"/>
                                                            </svg>
                                                        </button>
                                                    @endif
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <label for="team_member_facebook_link{{$index}}" class="zForm-label">{{__('Facebook Link')}}</label>
                                                <input type="text" name="team_member_facebook_link[]" id="team_member_facebook_link{{$index}}"
                                                       placeholder="{{__('Type facebook link')}}"
                                                       value="{{$ourTeamMember['facebook'] ?? ''}}"
                                                       class="form-control team_member_facebook zForm-control">
                                            </div>
                                            <div class="col-md-4">
                                                <label for="team_member_linkedin_{{$index}}" class="zForm-label">{{__('Linkedin Link')}}</label>
                                                <input type="text" name="team_member_linkedin_link[]" id="team_member_linkedin_{{$index}}"
                                                       placeholder="{{__('Type linkedin link')}}"
                                                       value="{{$ourTeamMember['linkedin'] ?? ''}}"
                                                       class="form-control team_member_linkedin zForm-control">
                                            </div>
                                            <div class="col-md-4">
                                                <label for="team_member_twitter_{{$index}}" class="zForm-label">{{__('Twitter / X Link')}}</label>
                                                <input type="text" name="team_member_twitter_link[]" id="team_member_twitter_{{$index}}"
                                                       placeholder="{{__('Type twitter link')}}"
                                                       value="{{$ourTeamMember['twitter'] ?? ''}}"
                                                       class="form-control team_member_twitter zForm-control">
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                            <div class="bd-c-black-stroke justify-content-between align-items-center text-end pt-15">
                                <button type="submit" class="py-10 px-26 bg-button bd-one bd-c-button bd-ra-8 fs-15 fw-600 lh-25 text-white">{{__('Submit')}}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('script')
    <script src="{{ asset('admin/theme/js/about-us.js') }}"></script>
@endpush
