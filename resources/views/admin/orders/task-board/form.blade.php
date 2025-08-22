<div class="row rg-20">
    <div class="col-12">
        <label for="task_name" class="zForm-label">{{ __('Task Name') }}<span class="text-danger">*</span></label>
        <input name="task_name" type="text" class="form-control zForm-control" id="task_name"
               value="{{ $orderTask->task_name ?? '' }}" placeholder="{{ __('Task Name') }}"/>
    </div>
    <div class="col-12">
        <div class="d-flex justify-content-between align-items-center g-10 pb-8">
            <label for="description" class="zForm-label mb-0">{{ __("Task Description") }}</label>
            <span class="fs-12 fw-400 lh-20 text-para-text">{{ __("Optional") }}</span>
        </div>
        <textarea name="description" id="description" class="form-control zForm-control" rows="3"
                  placeholder="{{ __('Task Description') }}">{!! $orderTask->description ?? '' !!}</textarea>
    </div>
    <div class="col-12">
        <div class="d-flex justify-content-between align-items-center g-10 pb-8">
            <label for="createServiceAssignMember" class="zForm-label mb-0">{{ __("Assign to a team member") }}</label>
            <span class="fs-12 fw-400 lh-20 text-para-text">{{ __("Optional") }}</span>
        </div>
        @php
            $oldAssignee = isset($orderTask) ? $orderTask->assignees->pluck('assign_to')->toArray() : [];
        @endphp
        <select class="sf-select-two" name="assign_member[]" multiple>
            @foreach($teamMember->whereIn('id', $orderAssignee) as $data)
                <option value="{{ $data->id }}" {{ in_array($data->id, $oldAssignee) ? 'selected' : '' }}>
                    {{ $data->email }}
                </option>
            @endforeach
        </select>
    </div>
    <div class="col-12">
        <div class="file-input-wrapper">
            <div class="d-flex justify-content-between align-items-center g-10 pb-8">
                <div class="align-items-center d-flex gap-1 pb-8">
                    <label class="zForm-label mb-0">{{ __("Attachment") }}</label>
                    <div data-bs-toggle="tooltip" data-bs-html="true"
                         title="Accepted documents: csv, odt, doc, docx, htm, html, pdf, ppt, pptx, txt, xls, xlsx, jpg, jpeg, png, gif, webp, svg, ai, mp4, mp3, wav, zip, rar">
                        <svg class="w-16" focusable="false" aria-hidden="true" viewBox="0 0 24 24">
                            <path
                                d="M11 7h2v2h-2zm0 4h2v6h-2zm1-9C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2m0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8"></path>
                        </svg>
                    </div>
                </div>
                <span class="fs-12 fw-400 lh-20 text-para-text">{{ __("Optional") }}</span>
            </div>
            <div class="file-upload-one file-upload-one-alt">
                <label for="file-add-{{$orderTask->id ?? ''}}">
                    <p class="fs-12 fw-500 lh-16 text-para-text">{{__('Choose attachment to upload')}}</p>
                    <p class="fs-12 fw-500 lh-16 text-white">{{__('Browse File')}}</p>
                </label>
                <input type="file" name="attachments[]" id="file-add-{{$orderTask->id ?? ''}}"
                       class="attachments file-input invisible position-absolute" multiple>
            </div>
            <div class="files-area">
                <span class="filesList">
                    <span class="files-names"></span>
                </span>
            </div>
        </div>
    </div>
    <div class="col-12">
        <label for="start_date" class="zForm-label">{{ __('Date') }}</label>
        <div class="align-items-center d-flex gap-3 justify-content-between pb-8">
            <input type="date" value="{{ $orderTask->start_date ?? '' }}" name="start_date"
                   class="form-control zForm-control" id="start_date" placeholder="{{ __('Enter Start Date') }}">
            <input type="date" value="{{ $orderTask->end_date ?? '' }}" name="end_date"
                   class="form-control zForm-control" id="end_date" placeholder="{{ __('Enter End Date') }}">
        </div>
    </div>
    <div class="col-12">
        <label for="label" class="zForm-label">{{ __('Label') }}</label>
        @php
            $oldLabels = isset($orderTask) ? $orderTask->labels->pluck('name')->toArray() : [];
        @endphp
        <select class="primary-form-control sf-select-modal-label" multiple name="labels[]">
            @foreach($labels as $label)
                <option
                    {{ in_array($label->name, $oldLabels) ? 'selected' : '' }} value="{{ $label->name }}">{{ $label->name }}</option>
            @endforeach
        </select>
    </div>
    <div class="col-12">
        <label for="status" class="zForm-label">{{ __('Priority') }}</label>
        <select class="sf-select-without-search" id="priority" name="priority">
            @foreach(getPriority() as $priority => $priorityName)
                <option
                    {{ ($orderTask->priority ?? '') == $priority ? 'selected' : '' }} value="{{ $priority }}">{{ $priorityName }}</option>
            @endforeach
        </select>
    </div>
    <div class="col-12">
        <label for="status" class="zForm-label">{{ __('Status') }}</label>
        <select class="sf-select-without-search" id="status" name="status">
            @foreach(getOrderTaskStatus() as $status => $statusName)
                <option
                    {{ ($orderTask->status ?? '') == $status ? 'selected' : '' }} value="{{ $status }}">{{ $statusName }}</option>
            @endforeach
        </select>
    </div>
    <div class="col-12">
        <div class="zForm-wrap-checkbox">
            <input type="checkbox" class="form-check-input" id="{{isset($orderTask) ? 'edit' : ''}}has_client_access" value="1"
                   name="has_client_access" {{ (isset($orderTask) && $orderTask->client_access) ? 'checked' : (!isset($orderTask) ? 'checked' : '') }}>
            <label for="{{isset($orderTask) ? 'edit' : ''}}has_client_access">{{ __('Has Client Access') }}</label>
        </div>
    </div>
</div>
