@extends('common.layouts.app')
@push('title')
    {{ __('Failed') }}
@endpush
@section('content')
    <section class="checkout-section p-0 px-10">
        <div class="checkout-wrap-inner">
            <div class="max-w-304 m-auto text-center">
                <div class="img pb-50"><img src="{{ asset('assets/images/checkout-failed.png') }}" alt="" /></div>
                <h4 class="fs-32 fw-600 lh-38 text-title-text pb-9">{{ __('Failed!') }}</h4>
                <p class="fs-14 fw-400 lh-24 text-para-text pb-17">
                    {{ __('Sorry! we found some issue in your payment method, Try again.') }}</p>
                @auth
                    @if((auth()->user()->role === USER_ROLE_ADMIN) || (auth()->user()->role === USER_ROLE_TEAM_MEMBER))
                        <a href="{{ route('admin.dashboard') }}"
                           class="border-0 d-inline-flex py-10 px-26 bd-ra-8 bg-button fs-15 fw-600 lh-25 text-white">{{ __('Back') }}</a>
                    @elseif(auth()->user()->role === USER_ROLE_CLIENT)
                        <a href="{{ route('user.dashboard') }}"
                           class="border-0 d-inline-flex py-10 px-26 bd-ra-8 bg-button fs-15 fw-600 lh-25 text-white">{{ __('Back') }}</a>
                    @endif
                @endauth
            </div>
        </div>
    </section>
@endsection
