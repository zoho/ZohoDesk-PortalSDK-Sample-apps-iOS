//
//  ZDDemoViewController.swift
//  AddTicketCustomizationDemo
//
//  Created by bala-zt124 on 25/06/19.
//  Copyright © 2019 Bala. All rights reserved.
//

import UIKit
import ZohoDeskPortalSDK

class ZDDemoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ZOHO Desk Demo"
        // Do any additional setup after loading the view.
        
        getTicketFields();
    }
    
    fileprivate func getTicketFields (){

        ZDProvoider.sharedInstance.getTicketForm("Your_Selected_departmentID", onCompletion: { (ticketFields) in
            // get Ticket Form in ticketFields variable
        }) { (error) in
            // Error while fetcjing TicketFields
        }
        /*If the ASAP is configured for single department, department id is opitonal. Else, the department id is mandatory*/
    }
    
    fileprivate func configureListToBeShown(){
        /* replace your field api name*/
        /* replace your field api name. Field API name can be found through, ticket fields API.*/
        /*If the ASAP is configured for single department, department id is opitonal. Else, the department id is mandatory*/
         let visibleFields = ZDVisibleTicketField(departmentId: "Department ID", fieldNames: ["field api name","field api name"])
        
        // You have to set ZDVisibleTicketField for every Department you want to configure.
        ZDCreateTicketConfiguration.setFieldsListTobeShown(fields: [visibleFields])
    }
    
    fileprivate func configureValuesToFields(){
        /* replace your field api name*/
        /* replace your field api name. Field API name can be found through, ticket fields API.*/
        /*If the ASAP is configured for single department, department id is opitonal. Else, the department id is mandatory*/
        let field1 = ZDCustomizedTicketField(fieldName: "field api name", value: "ticket field value", isEditable: true)
        let field2 = ZDCustomizedTicketField(fieldName: "field api name", value: "ticket field value", isEditable: false)
        let ticketForm = ZDCustomizedTicketForm(departmentId: "Department ID", fields: [field1,field2])
        
        // You have to set ZDVisibleTicketField for every Department you want to configure.
        ZDCreateTicketConfiguration.preFillTicketFields(forForms: [ticketForm])
        
        /*
         *   fieldValue - String
         For multiselect fields, pass the values allowed, as comma(,) separated String
         For pick list fields, pass one of the values allowed, as a string.
         For date fields, pass the value as a string in the "MM/dd/yyyy" format.
         For dateTime fields, pass the value as a string in the "MM-dd-yyyy hh:mm aa" format.
         For Boolean fields, pass a "true"/"false" value as a String.
         For all other field types, pass the values as string objects.
         Make sure that the values you pass adhere to the maxlength and decimal restrictions defined for the field.
         *
         * */
    }
    
    @IBAction func openZDCreateTicketWithCustomization(_ button:UIButton){
        // Have to add configuration before open SDK Create Ticket page
        configureListToBeShown()
        configureValuesToFields()
        
        // Open create Ticket Page
        ZohoDeskPortalSDK.addTicket(controller: self)
    }
    
}
