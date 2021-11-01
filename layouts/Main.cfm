<cfoutput>
    <html>
    <head>
        <title>Mailinator</title>
        <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    #wireStyles()#
    </head>
    <body>
        <h1>View cbMailServices Emails</h1>
        <p>List all files generated via `cbMailServices`' FileProtocol.</p>


        #wire( "Mail@Mailinator" )#

        <script src="/modules_app/mailinator/modules/cbwire/includes/js/livewire.js?id=301ba18dd17ace618a3e"></script>
        #wireScripts()#
    </body>
</html>
</cfoutput>