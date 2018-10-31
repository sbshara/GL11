<div class="content">
    <div class="container-fluid">
        @include('notifications')
        <div class="row">
            <div class="col-md-6">
                {!!Form::vertical_open()
                ->id('form-update-profile')
                ->method('POST')
                ->class('update-profile')
                ->action(guard_url('profile'))!!}
                <div class="card">
                    <div class="card-header with-sub" data-background-color="blue">
                        <div class="title-main">
                            <i class="pe-7s-user"></i>
                            <h4 class="title">Update Profile</h4>
                            <p class="sub-title">Update your personal datails</p>
                        </div>
                    </div>
                    <div class="card-content">
                        <div class="row">
                            <div class="col-sm-7">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="name">
                                        Name
                                    </label>
                                    {!! Form::text('name')
                                        -> label(trans('user::user.label.name'))
                                        -> raw()!!}
                                </div>
                                <div class="form-group label-floating">
                                    <label class="control-label" for="datepicker">
                                        Date of Birth
                                    </label>
                                    {!! Form::text('dob')
                                        -> label(trans('user::user.label.dob'))
                                        -> id('datepicker')
                                        -> raw()!!}
                                </div>
                                <div class="form-group label-floating">
                                    <label class="control-label" for="designation">
                                        Designation
                                    </label>
                                    {!! Form::text('designation')
                                        -> label(trans('user::user.label.designation'))
                                        -> raw() !!}
                                </div>
                                <div class="form-group label-floating">
                                    <label class="control-label" for="sex">
                                        Gender
                                    </label>
                                    {!! Form::radio('sex')
                                        -> radios(trans('user::user.options.sex'))
                                        -> inline() 
                                        -> raw()!!}
                                </div>
                            </div>
                            <div class="col-sm-5">
                                {!! $user->files('photo')->url($user->getUploadUrl('photo'))->cropper($user->picture)!!}
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="phone">
                                        Phone
                                    </label>
                                    {!! Form::number('phone')
                                        -> label(trans('user::user.label.phone'))
                                        -> raw() !!}
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="mobile">
                                        Mobile
                                    </label>
                                    {!! Form::number('mobile')
                                        -> label(trans('user::user.label.mobile'))
                                        -> raw() !!}
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="address">
                                        Address
                                    </label>
                                    {!! Form::text('address')
                                        -> label(trans('user::user.label.address'))
                                        -> raw() !!}
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="street">
                                        Street
                                    </label>
                                    {!! Form::text('street')
                                        -> label(trans('user::user.label.street'))
                                        -> raw() !!}
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="city">
                                        City
                                    </label>
                                    {!! Form::text('city')
                                        -> label(trans('user::user.label.city'))
                                        -> raw() !!}
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="district">
                                        District
                                    </label>
                                    {!! Form::text('district')
                                        -> label(trans('user::user.label.district'))
                                        -> raw() !!}
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="state">
                                        State
                                    </label>
                                    {!! Form::text('state')
                                        -> label(trans('user::user.label.state'))
                                        -> raw() !!}
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="country">
                                        Country
                                    </label>
                                    {!! Form::text('country')
                                        -> label(trans('user::user.label.country'))
                                        -> raw() !!}
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="web">
                                        Web
                                    </label>
                                    {!! Form::text('web')
                                        -> label(trans('user::user.label.web'))
                                        -> raw() !!}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="row">
                            <div class="col-sm-12">
                                <button class="btn-success btn-raised btn" type="submit">
                                    Update
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                {!! Form::close() !!}
            </div>

        <div class="col-md-6">
            {!!Form::vertical_open()
                ->id('change-passwprd')
                ->method('POST')
                ->class('change-password')
                ->action(guard_url('password'))!!}
            <div class="card">
                    <div class="card-header with-sub" data-background-color="orange">
                        <div class="title-main">
                            <i class="pe-7s-door-lock"></i>
                            <h4 class="title">Change password</h4>
                            <p class="sub-title">Chnage your current password.</p>
                        </div>
                    </div>
                <div class="card-content">
                    <div class="form-group label-floating">
                        <label class="control-label" for="old_password">
                            Current Password
                        </label>
                        {!! Form::password('old_password')
                              -> label(trans('user::user.label.current_password'))
                              -> raw() !!}
                    </div>
                    <div class="form-group label-floating">
                        <label class="control-label" for="password">
                            New Password
                        </label>
                        {!! Form::password('password')
                                  -> label(trans('user::user.label.new_password'))
                                  -> raw() !!}
                    </div>
                    <div class="form-group label-floating">
                        <label class="control-label" for="password_confirmation">
                            Confirm New Password
                        </label>
                        {!! Form::password('password_confirmation')
                                  -> label(trans('user::user.label.new_password_confirmation'))
                                  -> raw() !!}
                    </div>
                </div>
                <div class="card-footer">
                    <div class="row">
                        <div class="col-sm-12">
                            <button class="btn-success btn btn-raised" type="submit">
                                Update
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            {!! Form::close() !!}
        </div>
    </div>
</div>
