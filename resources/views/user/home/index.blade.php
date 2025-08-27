@extends('frontend.layouts.app')

@section('title', 'Home')

@section('customcontent')
  @include('user.home.hero')
  @include('user.home.about')
  @include('user.home.howitwork')
  @include('user.home.what-u-get')
  @include('user.home.toolbox')
  @include('user.home.logos')
  @include('user.home.results')
  @include('user.home.methalogy')
  @include('user.home.testimonial')
  @include('user.home.accordion')
  @include('user.home.request-form')
@endsection