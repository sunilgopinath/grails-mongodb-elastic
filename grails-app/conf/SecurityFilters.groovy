/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author sxg282
 */
class SecurityFilters {

    def filters = {
        doLogin(controllers:'*', action:'*') {
            before = {
                if(!controllerName)
                   return true
                def allowedActions = ['show', 'index', 'list', 'login', 'validate']
                if(session.user && !allowedActions.contains(actionName)) {
                    redirect(controller:'person', action:'login',
                    params:['cName':controllerName, 'aName':actionName])
                return false
                }
            }
        }
    }
	
}

