library(devtools)
install_github("Rfacebook", "pablobarbera", subdir="Rfacebook")

require(Rfacebook)

fb_oauth <- fbOAuth(app_id = '1205157882877654', 
                    app_secret = 'b08a64048bedc73b1bf9137ddf4fb163',
                    extended_permissions = TRUE)
