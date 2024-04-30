//
//  SubmitTicketAPIs.swift
//  ASAPDemo-Swift
//
//  Created by vinoth-15074 on 25/04/24.
//

import Foundation
import ZohoDeskPortalAPIKit

// MARK: - ASAP Submit Ticket APIs
class SubmitTicketAPIs {
    
    private func getProductList() {
        
        let departmentID: String = "Department_ID"
        
        //Parameters to download product list
        ///Parameters can be nil as ``params = nil``
        let params: [String: Any]? = [
            "from": "Start_Index",
            "limit": "Limit",
            "searchStr": "Search_String"
        ]
        
        ZohoDeskPortalKit.getProducts(inDepartmentID: departmentID, params) { result in
            switch result {
            case .success(let products):
                ///product list downloaded
                products
            case .failure(let error):
                ///product list download exception
                error
            }
        }
    }
    
    private func getLayoutsList() {
        
        //Parameters to download layouts list
        ///Parameters can be nil as ``params = nil``
        
        let params: [String: Any]? = [
            "departmentId": "Department_ID",
            "from": "Start_Index",
            "limit": "Limit",
            "layoutName": "Your_layout_name_to_search"
        ]
        
        //To fetch your list of ticket layouts
        ZohoDeskPortalKit.Ticket.getLayouts(params) { result in
            switch result {
            case .success(let layouts):
                ///Layouts list downloaded
                layouts
            case .failure(let error):
                ///Layout list download exception
                error
            }
        }
    }
    
    private func getTicketForm() {
        
        //Parameters to download a ticket form
        ///Parameters can be nil as ``params = nil``
        let params: [String: Any]? = [
            "departmentId" : "Department_ID",
            "layoutId": "Layout_ID"
        ]
        
        //Header for the ticket form
        ///headers can be nil as ``headers = nil``
        let headers: [String: String]? = ["featureFlags": "multiLayout,providePHIDetails,showIsNested"]
        
        //To fetch ticket form of a layout
        ZohoDeskPortalKit.Ticket.getForm(params, headers: headers) { result in
            switch result {
            case .success(let ticketForm):
                ///Ticket form downloaded
                ticketForm
            case .failure(let error):
                ///Ticket form download exception
                error
            }
        }
    }
    
    private func getTicketFields() {
        
        //Parameters to download a ticket fields
        ///Parameters can be nil as ``params = nil``
        let params: [String: Any]? = [
            "departmentId" : "Department_ID",
            "layoutId": "Layout_ID"
        ]
        
        //To fetch ticket layout fields
        ZohoDeskPortalKit.Ticket.getFields(params) { result in
            switch result {
            case .success(let ticketFields):
                //Ticket fields downloaded
                ticketFields
            case .failure(let error):
                //Ticket fields download exception
                error
            }
        }
    }
    
    private func addAttachment() {
        
        let attachmentData: Data = Data()
        let attachmentName: String = "Attachment_Name"
        
        //To add attachment into ticket
        ZohoDeskPortalKit.Ticket.addAttachment(with: attachmentData, andName: attachmentName) { result in
            switch result {
            case .success(let attachment):
                //Attachment uploaded
                attachment
            case .failure(let error):
                //Attachment upload exception
                error
            }
        }
    }
    
    private func getAttachmentList() {
        
        //To get ticket attachment list
        ZohoDeskPortalKit.Ticket.getAttachment(forID: "Ticket_ID") { result in
            switch result {
            case .success(let attachments):
                //Ticket attachment list downloaded
                attachments
            case .failure(let error):
                //Ticket attachment list download exception
                error
            }
        }
    }
    
    private func deleteAttachment() {
        
        //To delete a ticket attachment
        ZohoDeskPortalKit.Ticket.deleteAttachment(withID: "Attachment_ID") { flag in
            flag//Whether the attachment deleted
        }
    }
    
    private func getTemplatesList() {
        
        //Parameters to download list of templates for a ticket
        ///Parameters can be nil as ``params = nil``
        let params: [String: Any]? = [
            "departmentId": "Department_ID",
            "layoutId": "Layout_ID",
            "from": "Start_Index",
            "limit": "Limit"
        ]
        
        //To fetch ticket templates list of a layout
        ZohoDeskPortalKit.Ticket.getTemplates(params) { result in
            switch result {
            case .success(let templates):
                ///List of templates for a layout downloaded
                templates
            case .failure(let error):
                ///Templates list download exception
                error
            }
        }
    }
    
    private func getTemplate() {
        
        //To fetch a ticket template of a layout
        ZohoDeskPortalKit.Ticket.getTemplate(withID: "Template_ID") { result in
            switch result {
            case .success(let template):
                ///Ticket template downloaded
                template
            case .failure(let error):
                ///Ticket template download exception
                error
            }
        }
    }
    
    private func getLayoutRules() {
        
        //Parameters to download list of layout rules for a ticket layout
        ///Parameters can be nil as ``params = nil``
        let params: [String: Any]? = [
            "departmentId": "Department_ID",
            "layoutId": "Layout_ID",
            "activeRulesOnly": "Boolean",
            "from": "Start_Index",
            "limit": "Limit"
        ]
        
        //To get a layout rules
        ZohoDeskPortalKit.Ticket.getLayoutRules(params) { result in
            switch result {
            case .success(let layoutRules):
                ///Ticket layout rules downloaded
                layoutRules
            case .failure(let error):
                ///Ticket layout rules download exception
                error
            }
        }
    }
    
    private func getValidationRules() {
        
        //Parameters to download list of validation rules for a ticket layout
        ///Parameters can be nil as ``params = nil``
        let params: [String: Any]? = [
            "departmentId": "Department_ID",
            "layoutId": "Layout_ID",
            "activeRulesOnly": "Boolean",
            "from": "Start_Index",
            "limit": "Limit"
        ]
        
        //To get layout validation rules
        ZohoDeskPortalKit.Ticket.getValidationRules(params) { result in
            switch result {
            case .success(let validationRules):
                ///Ticket validation rules downloaded
                validationRules
            case .failure(let error):
                ///Ticket layout rules download exception
                error
            }
        }
    }
    
    private func submitTicketAsGuest() {
        
        ///Ticket Fields
        /// - Field & Value format
        let ticketFields: [String: Any] = [:]
        
        //To submit ticket as a guest user
        //Note: Guest user can't view or track submitted tickets
        ZohoDeskPortalKit.Ticket.addAsGuest(withFields: ticketFields) { result in
            switch result {
            case .success(let ticketID):
                //Submitted ticket ID
                ticketID
            case .failure(let error):
                //Ticket submission exception
                error
            }
        }
    }
    
    private func submitTicketAsAuthenticated() {
        
        ///Ticket Fields
        /// - Field & Value format
        /// - Parameters:
        ///     - ticketField: Ticket field name as keyword & field value as value
        ///     - customField: cf as keyword & `Dictionary<cfName, value>`
        ///     - attachmentIds: `Array<attachmentID>`
        let params: [String: Any] = [
            "ticketField1": "value1",
            "ticketField2": "value2",
            "cf": ["cf_field1": "cf_value1", "cf_field2": "cf_value2"],
            "attachmentIds": ["AttachmentID1","AttachmentID2","..."]
        ]
        
        //To submit ticket as an authenticated user
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.add(withFields: params) { result in
            switch result {
            case .success(let ticket):
                //Submitted ticket object
                ticket
            case .failure(let error):
                //Ticket submission exception
                error
            }
        }
    }
}

// MARK: - ASAP My Ticket APIs
class MyTicketAPIs {
    
    private func getTicketList() {
        
        //Parameters to fetch tickets list
        ///Parameters can be nil as ``params = nil``
        let params: [String: Any]? = [
            "from": "Start_Index",
            "limit": "Limit",
            "departmentId": "DepartmentID",
            "accountId": "AccountID",
            "viewId": "ViewID",
            "status": "Status",
            "include": "Include",
            "type": "Type",
            "priority": "Priority",
            "channel": "Channel",
            "customStatus": "Custom_status"
        ]
        
        //To get ticket list of a user
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.getList(params) { result in
            switch result {
            case .success(let tickets):
                //Tickets list downloaded
                tickets
            case .failure(let error):
                //Tickets list downloaded exception
                error
            }
        }
    }
    
    private func searchTickets() {
        
        //Parameters to fetch search tickets
        ///Parameters can be nil as ``params = nil``
        let params: [String: Any]? = [
            "from": "Start_Index",
            "limit": "Limit",
            "type": "Type",
            "departmentId": "DepartmentID",
            "viewId": "ViewID",
            "status": "Status",
            "priority": "Priority",
            "channel": "Channel",
            "category": "Category",
            "searchStr": "Search_String",
            "customField1": "Custom_Field",
            "createdTimeRange": "Created_Time_Range",
            "modifiedTimeRange": "Modified_Time_Range",
            "sortBy": "Sort_By",
            "FetchCount": "Flag"
        ]
        
        //To search tickets
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.searchTickets(params) { result in
            switch result {
            case .success(let tickets):
                //Searched Tickets downloaded
                tickets
            case .failure(let error):
                //Searched Tickets downloaded exception
                error
            }
        }
    }
    
    private func getTicket() {
        
        let ticketID: String = "Ticket_ID"
        
        //Parameters to fetch search tickets
        ///Parameters can be nil as ``params = nil``
        let params: [String: Any]? = [
            "include": "Include"
        ]
        
        //To get ticket
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.get(forID: ticketID, params) { result in
            switch result {
            case .success(let tickets):
                //Ticket downloaded
                tickets
            case .failure(let error):
                //Ticket downloaded exception
                error
            }
        }
    }
    
    private func addReply() {
        
        //Body of a ticket reply
        let body: [String: Any] = [
            "content": "Reply_Content",
            "attachmentIds": "[AttachmentID1,AttachmentID2,..]",
            "notifyMentions": "Flag"
        ]
        
        let ticketID: String = "Ticket_ID"
        
        //To reply to a ticket
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.reply(body, toTicketID: ticketID) { result in
            switch result {
            case .success(let reply):
                //Reply submitted
                reply
            case .failure(let error):
                //Reply submission exception
                error
            }
        }
    }
    
    private func getReplies() {
        
        let ticketID: String = "Ticket_ID"
        
        //Parameters to download list of replies a ticket layout
        ///Parameters can be nil as ``params = nil``
        let params: [String: Any]? = [
            "from": "Start_Index",
            "limit": "Limit",
            "isDescending": "Flag"
        ]
        
        //To get ticket reply/thread list
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.getThreads(forTicketID: ticketID, params) { result in
            switch result {
            case .success(let replies):
                //Ticket replies downloaded
                replies
            case .failure(let error):
                //Ticket replies download exception
                error
            }
        }
    }
    
    private func addComment() {
        
        //Body of a ticket reply
        let body: [String: Any] = [
            "content": "Comment_Content",
            "attachmentIds": "[AttachmentID1,AttachmentID2,..]",
            "notifyMentions": "Flag"
        ]
        
        let ticketID: String = "Ticket_ID"
        
        //To comment to a ticket
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.add(body, toTicketID: ticketID) { result in
            switch result {
            case .success(let comment):
                //Comment submitted
                comment
            case .failure(let error):
                //Comment submission exception
                error
            }
        }
    }
    
    private func getCommentsList() {
        
        let ticketID: String = "Ticket_ID"
        
        //Parameters to download list of comments a ticket layout
        ///Parameters can be nil as ``params = nil``
        let params: [String: Any]? = [
            "from": "Start_Index",
            "limit": "Limit"
        ]
        
        //To get ticket reply/thread list
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.getComments(forTicketID: ticketID, params) { result in
            switch result {
            case .success(let comments):
                //Ticket comments downloaded
                comments
            case .failure(let error):
                //Ticket comments download exception
                error
            }
        }
    }
    
    private func getThreadAttachment() {
        
        let attachmentID: String = "AttachmentID"
        let threadID: String = "ThreadID"
        let ticketID: String = "TicketID"
        
        //To get ticket reply/thread attachment data
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.getContent(ofAttachmentID: attachmentID, forthreadID: threadID, inTicketID: ticketID) { result in
            switch result {
            case .success(let data):
                //Attachment data downloaded
                data
            case .failure(let error):
                //Attachment data download exception
                error
            }
        }
    }
    
    private func getCommentAttachment() {
        
        let attachmentID: String = "AttachmentID"
        let commentID: String = "CommentID"
        let ticketID: String = "TicketID"
        
        //To get ticket comment attachment data
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.getContent(ofAttachmentID: attachmentID, forCommentID: commentID, inTicketID: ticketID) { result in
            switch result {
            case .success(let data):
                //Attachment data downloaded
                data
            case .failure(let error):
                //Attachment data download exception
                error
            }
        }
    }
    
    private func getTicketResolution() {
         
        //To get ticket resolution
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.getResolution("TicketID") { result in
            switch result {
            case .success(let resolution):
                //Ticket resolution downloaded
                resolution
            case .failure(let error):
                //Ticket resolution download exception
                error
            }
        }
    }
    
    private func getConversationList() {
        
        let ticketID: String = "Ticket_ID"
        
        //Parameters to download list of conversation a ticket layout
        ///Parameters can be nil as ``params = nil``
        let params: [String: Any]? = [
            "from": "Start_Index",
            "limit": "Limit"
        ]
        
        //To get ticket conversations list
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.getConversations(forTicketID: ticketID, params) { result in
            switch result {
            case .success(let conversations):
                //Ticket conversations downloaded
                conversations
            case .failure(let error):
                //Ticket conversations download exception
                error
            }
        }
    }
    
    // MARK: Ticket update
    
    private func updateTicket() {
        
        let ticketID: String = "Ticket_ID"
        
        ///Ticket Fields
        /// - Field & Value format
        /// - Parameters:
        ///     - ticketField: Ticket field name as keyword & field value as value
        ///     - customField: cf as keyword & `Dictionary<cfName, value>`
        ///     - attachmentIds: `Array<attachmentID>`
        let params: [String: Any] = [
            "ticketField1": "value1",
            "ticketField2": "value2",
            "cf": ["cf_field1": "cf_value1", "cf_field2": "cf_value2"],
            "attachmentIds": "[AttachmentID1,AttachmentID2,..]"
        ]
        
        //To update a ticket
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.updateTicket(withID: ticketID, params: params) { result in
            switch result {
            case .success(let ticket):
                //Ticket submitted
                ticket
            case .failure(let error):
                //Ticket submission exception
                error
            }
        }
    }
    
    private func updateReply() {
        
        //Body of a ticket reply
        let body: [String: Any] = [
            "content": "Reply_Content",
            "isDraft": "Flag",
            "attachmentIds": ["AttachmentID1","AttachmentID2","..."]
        ]
        
        let threadID: String = "Thread_ID"
        let ticketID: String = "Ticket_ID"
        
        //To update reply to a ticket
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.edit(body, withID: threadID, inTicketID: ticketID) { result in
            switch result {
            case .success(let reply):
                //Reply submitted
                reply
            case .failure(let error):
                //Reply submission exception
                error
            }
        }
    }
    
    private func updateComment() {
        
        //Body of a ticket reply
        let body: [String: Any] = [
            "content": "Comment_Content",
            "attachmentIds": ["AttachmentID1","AttachmentID2","..."],
            "notifyMentions": "Flag"
        ]
        
        let commentID: String = "Ticket_ID"
        let ticketID: String = "Ticket_ID"
        
        //To update comment of a ticket
        //Authentication required to perform action
        ZohoDeskPortalKit.Ticket.edit(body, withID: commentID, toTicketID: ticketID) { result in
            switch result {
            case .success(let comment):
                //Comment submitted
                comment
            case .failure(let error):
                //Comment submission exception
                error
            }
        }
    }
}
