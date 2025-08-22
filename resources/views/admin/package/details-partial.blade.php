<div class="p-sm-30 p-15">
    <div class="row rg-20">
        <div class="col-lg-5 col-md-6">
            <div class="bg-white bd-one bd-c-black-stroke bd-ra-10 p-sm-25 p-15">
                <div class="mb-25 bd-ra-8 overflow-hidden"><img src="{{getFileUrl($packageDetails->image)}}"
                                                                class="w-100" alt=""/></div>
                <ul class="zList-pb-18">
                    <li class="d-flex justify-content-between align-items-center flex-wrap g-10">
                        <!-- Left -->
                        <div class="d-flex align-items-center g-10">
                            <div class="d-flex"><img src="{{ asset('assets/images/icon/date.svg') }}" alt=""/>
                            </div>
                            <h4 class="fs-15 fw-500 lh-18 text-para-text">{{__("Date")}}</h4>
                        </div>
                        <!-- Right -->
                        <p class="fs-15 fw-500 lh-18 text-title-text">{{date('d/m/Y', strtotime($packageDetails->created_at))}}</p>
                    </li>
                    <li class="d-flex justify-content-between align-items-center flex-wrap g-10">
                        <!-- Left -->
                        <div class="d-flex align-items-center g-10">
                            <div class="d-flex"><img src="{{ asset('assets/images/icon/dollar-circle.svg') }}"
                                                     alt=""/></div>
                            <h4 class="fs-15 fw-500 lh-18 text-para-text">{{__('Price')}}</h4>
                        </div>
                        <!-- Right -->
                        <p class="fs-15 fw-500 lh-18 text-title-text">{{currentCurrency('symbol')}}{{$packageDetails->price}}</p>
                    </li>
                    @if($packageDetails->duration != null)
                        <li class="d-flex justify-content-between align-items-center flex-wrap g-10">
                            <!-- Left -->
                            <div class="d-flex align-items-center g-10">
                                <div class="d-flex"><img src="{{ asset('assets/images/icon/stopwatch.svg') }}"
                                                         alt=""/></div>
                                <h4 class="fs-15 fw-500 lh-18 text-para-text">{{__("Duration")}}</h4>
                            </div>
                            <!-- Right -->
                            <p class="fs-15 fw-500 lh-18 text-title-text">{{ $packageDetails->duration }} {{__("Days")}}</p>
                        </li>
                    @endif
                    @foreach($packageDetails->custom_features ?? [] as $feature)
                        <li class="d-flex justify-content-between align-items-center flex-wrap g-10">
                            <!-- Left -->
                            <div class="d-flex align-items-center g-10">
                                <div class="d-flex"><i class="fa-solid fa-feather"></i></div>
                                <h4 class="fs-15 fw-500 lh-18 text-para-text">{{$feature['name']}}</h4>
                            </div>
                            <!-- Right -->
                            <p class="fs-15 fw-500 lh-18 text-title-text">{{$feature['value']}}</p>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
        <div class="col-lg-7 col-md-6">
            <div class="bg-white bd-one bd-c-black-stroke bd-ra-10 p-sm-25 p-15 mb-20">
                <h4 class="fs-18 fw-500 lh-22 text-title-text pb-12">{{__("Details")}}</h4>
                {{$packageDetails->service_description}}
            </div>
            @if(count($packageDetails->faqs ?? []))
                <div class="bd-c-black-stroke bd-one bd-ra-10 bg-white p-15 p-sm-25">
                    <h4 class="fs-18 fw-500 lh-22 text-title-text pb-12">{{__("Frequently Asked Questions")}}</h4>
                    <div class="accordion zAccordion-two zAccordion-reset" id="accordionExample">
                        <div class="row rg-10">
                            @foreach ($packageDetails->faqs ?? [] as $i => $faq)
                                <div class="accordion-item bg-bg-color">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button"
                                                data-bs-toggle="collapse"
                                                data-bs-target="#collapseOne{{ $i }}"
                                                aria-controls="collapseOne{{ $i }}">{{ ($i+1) }}.
                                            {{ $faq['question'] }}</button>
                                    </h2>
                                    <div id="collapseOne{{ $i }}" class="accordion-collapse collapse"
                                         data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <p class="fs-16">{{ $faq['answer'] }}</p>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            @endif
        </div>
    </div>
</div>
