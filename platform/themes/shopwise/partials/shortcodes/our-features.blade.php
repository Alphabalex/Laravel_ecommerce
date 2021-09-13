<div class="section">
    <div class="container">
        <div class="row no-gutters">
            @for ($i = 1; $i < 4; $i++)
                <div class="col-md-4">
                    <div class="icon_box icon_box_style1">
                        <div class="icon">
                            <i class="{!! clean($shortcode->{'icon' . $i}) !!}"></i>
                        </div>
                        <div class="icon_box_content">
                            <h5>{!! clean($shortcode->{'title' . $i}) !!}</h5>
                            @if ($shortcode->{'description' . $i})
                                <p>{!! clean($shortcode->{'description' . $i}) !!}</p>
                            @endif
                            @if ($shortcode->{'subtitle' . $i})
                                <p>{!! clean($shortcode->{'subtitle' . $i}) !!}</p>
                            @endif
                        </div>
                    </div>
                </div>
            @endfor
        </div>
    </div>
</div>
