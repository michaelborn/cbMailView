component accessors="true" extends="cbwire.models.Component"{

    property name="mailPath" inject="coldbox:moduleSettings:mailinator";

    variables.data = {
        // email list here
        emails : []
    };

    // list all email files
    function list(){
        variables.data.emails = directoryList( getMailPath(), false, "query" );
    }

    /**
     * Read/view single email file
     */
    function view(){

    }

    function renderIt(){
        return this.renderView(
            "wires/Mail"
        );
    }
}