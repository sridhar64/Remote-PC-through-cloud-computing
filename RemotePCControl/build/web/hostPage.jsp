<div id="hostpage">
    <div class="well col-sm-12 text-center">
        <strong>
            <h2>Hosting Details</h2>
        </strong>
    </div>
    <div class="col-sm-3"></div>
    <div class="jumbotron col-sm-6">

        <form class="form-horizontal" role="form">
            <div class="form-group">
                <div class="col-sm-3">
                    <label>Dos</label>
                </div>
                <div class="col-sm-8">
                    <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="5000" data-slider-step="10" data-slider-value="2000" data-slider-id="DOSGC" id="DOSGCID" data-slider-handle="round" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-3">
                    <label>Monitor</label>
                </div>
                <div class="col-sm-8">
                    <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="5000" data-slider-step="10" data-slider-value="2000" data-slider-id="MONGC" id="MONGCID" data-slider-handle="round" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-3">
                    <label>Control</label>
                </div>
                <div class="col-sm-8">
                    <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="5000" data-slider-step="10" data-slider-value="2000" data-slider-id="CONGC" id="CONGCID" data-slider-handle="round" />
                </div>
            </div>
            <input type="hidden" name="hostpagedosvalue" id="hostpagedosvalue">
            <input type="hidden" name="hostpagemonvalue" id="hostpagemonvalue">
            <input type="hidden" name="hostpageconvalue" id="hostpageconvalue">
            <div class="form-group">        
                <div class="col-sm-12">
                    <button type="button" class="btn btn-info btn-block" id="hostbutton" onclick="sendSpeed()" data-toggle="modal" data-target="#modalhostpage">Host <span class="fa fa-desktop"></span></button>
                </div>
            </div>
        </form>
    </div>
    <div class="col-sm-3"></div>

    <div id="modalhostpage" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Connection</h4>
                </div>
                <div class="modal-body">
                    <p>Run the Remote PC Meet Desktop application and login to make a CONNNECTION</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" onclick="myToast('Hosted')" data-dismiss="modal">Close <span class="fa fa-close"></span></button>
                </div>
            </div>

        </div>
    </div>

</div>