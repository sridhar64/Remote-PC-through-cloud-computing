<%-- 
    Document   : test
    Created on : Dec 26, 2018, 6:58:56 PM
    Author     : K.sridhar reddy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="bootstrapLoad.jsp"/>
    </head>
    <body>
        <div class="container">

            
        </div>

        
       
                        
                                    
                                    
                                

        
    </body>
</html>



<div>
    <div class="input-group">
        <span class="glyphicon glyphicon-search input-group-addon" aria-hidden="true" id="basic-addon1-connect"></span>
        <input type="text" id="connect-for-users-input" class="form-control" onkeyup="functionConnectForUsersSearch()" placeholder="Search for users to Connect..." aria-describedby="basic-addon1-connect">
    </div>

    <div id="connect-for-users-ul" class="list-group">
        <a href="#" class="list-group-item list-group-item-success" data-toggle="modal" data-target="#myModal">
            <h4 class="list-group-item-heading">First List Group Item Heading</h4>
            <p class="list-group-item-text">List Group Item Text</p>
        </a>
        <a href="#" class="list-group-item list-group-item-success">
            <h4 class="list-group-item-heading">Second List Group Item Heading</h4>
            <p class="list-group-item-text">List Group Item Text</p>
        </a>
        <a href="#" class="list-group-item list-group-item-success">
            <h4 class="list-group-item-heading">Third List Group Item Heading</h4>
            <p class="list-group-item-text">List Group Item Text</p>
        </a>
    </div>
</div>
</div>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title text-center">Connection Settings</h4>
            </div>
            <div class="modal-body col-sm-12">
                <form action="login.jsp" method="post" class="form-horizontal" role="form">
                    <div class="form-group">

                        <div class="container">
                            <label class="checkbox-inline disabled"><input type="checkbox" disabled value="">DOS</label>
                            <label class="checkbox-inline disabled"><input type="checkbox" disabled value="">Monitor</label>
                            <label class="checkbox-inline disabled"><input type="checkbox" disabled value="">Control</label>
                        </div>
                        <hr>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped active progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%">DOS 40%</div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped active progress-bar-info" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%">Monotor 40%</div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped active progress-bar-danger" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%">Control 40%</div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">Connect</button>
            </div>
        </div>

    </div>
</div>