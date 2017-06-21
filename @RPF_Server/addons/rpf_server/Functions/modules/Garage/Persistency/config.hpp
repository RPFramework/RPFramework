class RPF_GaragePersistencyServerModule {
    
    /*
    Note: variablesToSave
    Array of variables' names(Strings) that should get
    saved and restored.
    */ 
    variablesToSave[] = {
    "rowID",
    "ownerUID"
    }; 
   
    /*
    Note: intervalTime
    Amount in seconds before writing edits
    to server's profile file. 
    Use higher values for magnetic disks,lower for SSDs.
    Keep in mind that if the server crashes during this
    amount of time,it is very likely that vehicles won't
    get saved with their updated properties,such as position
    or damage.
    */
    intervalTime = 300; 

};