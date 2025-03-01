config = config or {} -- Don´t change
--
--░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░
--██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░
--██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░
--██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗
--╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝
--░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░╚═╝░╚═════╝░
--

config.debug = false
config.Webhooks = { 
    ['test']= { --leave it be for the "Script started" thing
        author = "",
        icon = '',
        URL = 'WEBHOOK',
    },
    ['join']= {
        author = "",
        icon = '',
        URL = 'WEBHOOK',
    },
    ['leave']= {
        author = "",
        icon = '',
        URL = 'WEBHOOK',
    },

}
