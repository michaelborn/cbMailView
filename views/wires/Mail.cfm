<cfoutput>
    <div>
        Grant says whatever. 😁😁😁
        <button wire:click="list">Check email</button>

        <cfloop from="1" to="#ArrayLen( args.emails )#" index="n">
            #args.emails[ n ].name#
        </cfloop>
    </div>
</cfoutput>