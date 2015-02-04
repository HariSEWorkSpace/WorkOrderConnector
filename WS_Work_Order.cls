global class WS_Work_Order{


        

     global class WorkOrder{
     
            webservice ID         workOrderbFOID; 
            webservice String     workOrderNumber; 
            webservice ID      installedAtAccountbFOID ;
            webservice Contact    contact;
            webservice Date    customerRequestedDate ; // need to confirm datatype           
            webservice String customerRequestedTime;
            webservice String serviceBusinessUnit;
            webservice String priority;
            webservice String scheduledDateTime;
            webservice ID     workOrderGroupbFOID;
            webservice String workOrderName;
            webservice String workOrderReason;
            webservice String commentToPlanner;
            webservice String countryOfBackOffice;
            webservice String backOfficeSystem;
            webservice String workOrderStatus;
            webservice String workOrderSubStatus;
            webservice String workOrderCategory;
            webservice String workOrderType;
            webservice String workOrderSubType;
            webservice String isBillable;
            webservice String billingType;
            webservice Technician primaryFSR;
            webservice ID     parentWObFOID;
            webservice ID     soldToAccountbFOID;
            webservice InstalledProduct mainInstalledProduct;
            webservice String  productbFOID;
            webservice String  projectNumber;
            webservice String  serviceContractBOReference;
            webservice String  serviceLineBOReference;
            webservice String  salesOrderNumber;
            webservice String  salesOrderLineNumber;
            webservice String  PONumber;
            webservice String  serviceCenterTerritoryName;
            webservice String  customerReferenceNumber;
            webservice DateTime  TECH_FOLastUpdateTimestamp; 
            webservice WorkDetail   WorkDetail;
            webservice String   quotationNumber;
            webservice Id   serviceContractbFOID;
            webservice Id   serviceLinebFOID;
            webservice String   WOBackOfficeReference;
            webservice String   TECH_WOBackOfficeRecordID;
            webservice String   WOGBackOfficeReference;
            webservice Decimal   estimatedExpenseCost;
            webservice Decimal   estimatedMaterialCost;
            webservice Decimal   estimatedLaborCost;
            webservice String   WOcurrencyIsCode;
            webservice String billToAccountbFOID;
            webservice String slaTermsName;
        
     
     }
     
     
     
     global class WorkDetail{
        webservice List<TimeWD> TimeWDs;
        webservice List<ExpenseWD> ExpenseWDs;  
        webservice List<ServiceProductsWD> ServiceProductsWDs;
        webservice List<PartsWD> PartsWDs;
     }
     
     global class Account{
        webservice    String   GoldenID;
        webservice    String   Name;
        webservice    String   NameLocal;
        webservice    String   Street;
        webservice    String   StreetLocal;
        webservice    String   AddAddressInfo;
        webservice    String   AddAddressInfoLocal;
        webservice    String   ZipCode;
        webservice    String   City;
        webservice    String   LocalCity;
        webservice    String   CountryCode;
        webservice    String   StateProvinceCode;

     
     }
     global class Contact{
        
        webservice String GoldenID;
        webservice String firstName;
        webservice String localFirstName;
        webservice String middleInitial;
        webservice String localMiddleInitial;
        webservice String lastName;
        webservice String localLastName;
        webservice String emailAddress;
        webservice String mobilePhone;
        webservice String workPhone;
        
     }
     global class Technician{
     
        webservice String SESAID;
        webservice String FirstName;
        webservice String LastName;
        webservice String Email;
        webservice String RoleName;
       
     
     }
     global class InstalledProduct{
     
        webservice String GoldenID;
        webservice String Name;
        webservice String InstalledAtGoldenID;
        webservice String SerialNumber;
        webservice String SECommercialRef;
        webservice String installedAtCountryCode;      
       
     
     }
     
     global class PartsOrder{
        webservice  ID partOrderbFOID;      
        webservice  String  partOrderbFONumber  ;
        webservice  String  partOrderStatus ;
        webservice  String  serviceLevel    ;
        webservice  Contact contact ;
        webservice  String  shippingReceivingNotes  ;
        webservice  Account shipToAccount   ;
        webservice  String  freightTerms    ;
        webservice  String  partsSLATerms   ;
        webservice  String  onsiteSLATerms  ;

        webservice List<PartsOrderLine> PartsOrderLines;
     
     }

     global class PartsOrderLine{
      
        webservice  ID   partOrderbFOID;        
        webservice  ID  partOrderLinebFOID  ;
        webservice  String  partOrderLinebFONumber  ;
        webservice  String  partOrderLineType   ;
        webservice  String  sparePartbFOID   ;
        webservice  String  FOSKUReference  ;
        webservice  String  plantName   ;
        webservice  Integer expectedQuantity    ;
        webservice  String  unitOfMeasure   ;
        webservice  String  requestedDate   ;
        webservice  String  calculatedPlant ;
        webservice  Integer stockQuantity   ;
        webservice  String  sparePartCategory   ;
        webservice  String  expectedShipDate    ;
        webservice  String  LeadDate    ;
        webservice  String  BOMaterialReference ;
        webservice  String  freeTextReference   ;
        webservice  String  genericReference    ;
        webservice  String  createdBySESAID ;
        webservice  String  createdByFirstName  ;
        webservice  String  createdByLastName   ;



     }

     global class TimeWD{
         
        webservice ID workOrderbFOID;
        webservice ID  workDetailbFOID;
        webservice String  lineType;
        webservice String  activityType;
        webservice String  hourType;
        webservice  Technician  FSR;
        webservice  String  isBillable;    
        webservice  String  billingType;
        webservice  String  startDateTime;
        webservice  String  endDateTime;
        webservice  Double  totalTime;
        webservice  String  workDescription;
        webservice  ID  workDetailPlannedbFOID;


     
     }
     global class ExpenseWD{
     
        webservice     ID  workOrderbFOID;
        webservice      ID  workDetailbFOID;
        webservice      String  lineType;
        webservice      String  expenseType;
        webservice      String  expenseDate;
        webservice      String  isBillable;
        webservice      String  billingType;
        webservice      Double  expenseQuantity;
        webservice      Double  linePricePerUnit;
        webservice      String  workDescription;
        webservice      ID  workDetailPlannedbFOID;
        webservice      String  currencyIsoCode;

     
     }
     global class ServiceProductsWD{
        webservice ID workOrderbFOID;
        webservice  Technician  FSR;
        webservice String workDescription;
        webservice InstalledProduct InstalledProduct;
     }
     global class PartsWD{
        /*
        webservice List<PartsOrder> PartsOrders;
        webservice Contact  Contact;
        webservice String shippingReceivingNotes;
        webservice Account shipToAccount;
        webservice String   freightTerms;
        webservice String   partsSLATerms;
        webservice String   onsiteSLATerms;
        */


     
     }
     global class WorkOrderResult{
        webservice  Boolean success;
        webservice  String  type;
        webservice  String  errorMessage;
        webservice  ID      workOrderbFOID;
        webservice  String  workOrderNumber;
        webservice  String  workOrderBOReference;
        webservice  String  TECH_WOBackOfficeRecordID;
        webservice  ID      workOrderGroupbFOID;
        webservice  String  workOrderGoupBOReference;
        webservice  String  countryOfBackOffice;
        webservice  String  backOfficeSystem;
        webservice  WorkDetailsResult   WorkDetailsResult;

     
     }
     global class WorkDetailsResult{
        webservice  List<TimeWDResult> TimeWDResults;
        webservice  List<ExpenseWDResult> ExpenseWDResults;
        webservice  List<PartsWDResult> PartsWDResult;
        webservice  List<ServicedProductsWDResult> ServicedProductsWDResult;
     
     }
     global class ServicedProductsWDResult{
     
        webservice  Boolean success;
        webservice  String  type;
        webservice  String  errorMessage;
        webservice  ID      installedProductbFOID;
        webservice  String  installedProductGoldenID;
        webservice  String  SerialNumber;
        webservice  ID      workOrderbFOID;

     
     }
     global class PartsWDResult{
     
     }
     global class ExpenseWDResult{
     
     }
     global class TimeWDResult{
     
     }
     global class WorkOrderSyncDetails{
        webservice  ID  workOrderbFOId;
        webservice  String  workOrderBOReference;
        webservice  String  TECH_WOBackOfficeRecordID;
        webservice  ID  workOrderGroupbFOID;
        webservice  String  workOrderGroupBOReference;
        webservice  String  BackOfficeSystem;
        webservice  String  Event;
        webservice  Boolean success;
        webservice String BOerrorMessage;
     
     }
     global class WorkOrderSyncDetailsResult{
        webservice  ID workOrderbFOId;
        webservice  Boolean success;
        webservice String errorMessage;
        
     
     }
     public class ServiceProducts{
        
            public Id Serial_Number;
            public Id Group_Member;
            public id UserId;
            public id ContactId;
            public id Fsrid;
            public id ipid;
            public String SESAID;
            public String FirstName;
            public String LastName;
            public String Email;
            public String RoleName;
            public String GoldenID;
            public String IPName;
            public String InstalledAtGoldenID;
            public String IPSerialNumber;
            public String IPSECommercialRef;
            public String IpinstalledAtCountryCode;   
        
     
     }
    public static WorkOrder woresult = new WorkOrder();
    public static Map<String,RecordType> woDetailsMap = new Map<String,RecordType>();
    webservice static  WorkOrder getWorkOrderDetails(Id WorkOrderId, String Event){ 
            
            
            if(WorkOrderId != null )
            {
                for(RecordType rt: [SELECT DeveloperName,Id,Name,SobjectType FROM RecordType where SobjectType ='SVMXC__Service_Order_Line__c']){
                    woDetailsMap.put(rt.DeveloperName , rt);
                }
                
                if(Event=='WO.CREATION')
                {
                    
                    if(woDetailsMap.containskey('Products_Serviced')){
                        RecordType rt =woDetailsMap.get('Products_Serviced');
                        SVMXC__Service_Order__c wo = getWorkOrderObject(WorkOrderId);
                        populateWorkOrderFields(wo);
                        WorkDetail wd=new WorkDetail();
                        
                        wd.ServiceProductsWDs = getServiceProducts(WorkOrderId,rt.id);
                        woresult.WorkDetail = wd;
                    }
                
                }
                else if(Event=='WO.RELEASE'){
                
                        SVMXC__Service_Order__c wo = getWorkOrderObject(WorkOrderId);
                         populateWorkOrderFields(wo);
                         WorkDetail wd= getWorkDetails(WorkOrderId ,'WO.RELEASE');
                         woresult.WorkDetail = wd;
                         
                         
                         
                }
            
            }
            return woresult;
    
    }
    public static Set<String> GoldenIDset = new Set<String>();
    public static Set<String> firstNameset = new Set<String>();
    public static Set<String> localFirstNameset = new Set<String>();
    public static Set<String> middleInitialset = new Set<String>();
    public static Set<String> localMiddleInitialset = new Set<String>();
    public static Set<String> lastNameset = new Set<String>();
    public static Set<String> localLastNameset = new Set<String>();
    public static Set<String> emailAddressset = new Set<String>();
    public static Set<String> mobilePhoneset = new Set<String>();
    public static Set<String> workPhoneset = new Set<String>();
    
    public static Set<String> IPGoldenIDset = new Set<String>();
    public static Set<String> Nameset = new Set<String>();
    public static Set<String> InstalledAtGoldenIDset = new Set<String>();
    public static Set<String> SerialNumberset = new Set<String>();
    public static Set<String> SECommercialRefset = new Set<String>();
    public static Set<String> installedAtCountryCodeset = new Set<String>();
    
    
    
    webservice static List<WorkOrderResult> bulkCreateWorkOrders(List<WorkOrder> WorkOrderList){
            WorkOrder wou = WorkOrderList[0];
            
            List<WorkOrderResult> worList = new List<WorkOrderResult>(); 
             List<Sobject> conList = new List<Sobject>();
            
            SVMXC__Service_Order__c  wo =   getWorkOrder(wou);
            
            
            if(wou.contact != null )
            {           
                getContactFields(wou.contact);
                if(GoldenIDset.Size()>0 || firstNameset.size()>0 || localFirstNameset.size()>0 || 
                       middleInitialset.size()>0  || lastNameset.size()>0 ||
                       localLastNameset.size()>0 || emailAddressset.size()>0 || mobilePhoneset.size()>0 || workPhoneset.size()>0 )
                {
                         String Querystr = getContactQuery();                        
                         conList = Database.query(Querystr);
                         System.debug('\n SCLog : '+conList.size());                         
                         System.debug('\n SCLog : '+conList);
                }
                if(getMatchedContact(wou.contact ,conList) != null )
                {
                    wo.SVMXC__Contact__c = getMatchedContact(wou.contact ,conList); 
                }
                
                
            }
            if(wou.primaryFSR != null ){
                if(wou.primaryFSR.RoleName == 'Schneider Employee'){
                    System.debug('\n WOWS Log :primaryFSR '+wou.primaryFSR);
                    String whereClause ='';
                    if(wou.primaryFSR.SESAID != null && wou.primaryFSR.SESAID !='')
                        whereClause ='FederationIdentifier = \''+wou.primaryFSR.SESAID+'\'';
                    if(wou.primaryFSR.FirstName != null && wou.primaryFSR.FirstName !='')
                    {
                        if(whereClause.length()>0){
                            whereClause +=' and FirstName = \''+wou.primaryFSR.FirstName+'\'';
                        }
                        else{
                            whereClause +='  FirstName = \''+wou.primaryFSR.FirstName+'\'';
                        }
                    }
                    if(wou.primaryFSR.LastName != null && wou.primaryFSR.LastName !='')
                    {
                        if(whereClause.length()>0){
                            whereClause +=' and LastName = \''+wou.primaryFSR.LastName+'\'';
                        }
                        else{
                            whereClause +='  LastName = \''+wou.primaryFSR.LastName+'\'';
                        }
                    }   
                    if(wou.primaryFSR.Email != null && wou.primaryFSR.Email !='')
                    {
                        if(whereClause.length()>0){
                            whereClause +=' and Email = \''+wou.primaryFSR.Email+'\'';
                        }
                        else{
                            whereClause +='  Email = \''+wou.primaryFSR.Email+'\'';
                        }
                    }
                    if(whereClause.length()>0)
                    whereClause = ' where '+whereClause;
                    
                   
                    String QueryString ='SELECT Email,FederationIdentifier,FirstName,Id,LastName FROM User '+whereClause +' Limit 1';
                    System.debug('\n WOWS Log :user query '+QueryString);
                    try{ 
                        user u = Database.query(QueryString);
                        System.debug('\n WO WS Log :'+u);
                        
                            if(u!= null )
                            {
                                System.debug('\n WO WS Log :'+[select id , name  from SVMXC__Service_Group_Members__c where SVMXC__Salesforce_User__c = : u.id]);
                                wo.SVMXC__Group_Member__c =[select id , name  from SVMXC__Service_Group_Members__c where SVMXC__Salesforce_User__c = : u.id].id;
                            }
                    }
                    catch(Exception ex){
                        
                    }
                }
                else{
                    System.debug('\n WOWS Log :primaryFSR '+wou.primaryFSR);
                    String whereClause ='';
                    if(wou.primaryFSR.FirstName != null && wou.primaryFSR.FirstName !='')
                    {
                        if(whereClause.length()>0){
                            whereClause +=' and FirstName = \''+wou.primaryFSR.FirstName+'\'';
                        }
                        else{
                            whereClause +='  FirstName = \''+wou.primaryFSR.FirstName+'\'';
                        }
                    }
                    if(wou.primaryFSR.LastName != null && wou.primaryFSR.LastName !='')
                    {
                        if(whereClause.length()>0){
                            whereClause +=' and LastName = \''+wou.primaryFSR.LastName+'\'';
                        }
                        else{
                            whereClause +='  LastName = \''+wou.primaryFSR.LastName+'\'';
                        }
                    }   
                    if(wou.primaryFSR.Email != null && wou.primaryFSR.Email !='')
                    {
                        if(whereClause.length()>0){
                            whereClause +=' and Email = \''+wou.primaryFSR.Email+'\'';
                        }
                        else{
                            whereClause +='  Email = \''+wou.primaryFSR.Email+'\'';
                        }
                    }
                    if(whereClause.length()>0)
                    whereClause = ' where '+whereClause;
                
                
                     String QueryString ='SELECT Email,FirstName,Id,LastName FROM contact '+whereClause +' Limit 1';
                     System.debug('\n WOWS Log :Contact Query '+QueryString);
                     try{ 
                        Sobject con = Database.query(QueryString);
                        String conid = String.valueOf(con.get('Id'));
                        System.debug('\n WO WS Log :'+conid);
                        
                            if(con!= null )
                            {
                                System.debug('\n WO WS Log :'+[select id , name,ThirdPartyContact__c  from SVMXC__Service_Group_Members__c where ThirdPartyContact__c = : conid]);
                                wo.SVMXC__Group_Member__c =[select id , name,ThirdPartyContact__c  from SVMXC__Service_Group_Members__c where ThirdPartyContact__c = : con.id].id;
                            }
                    }
                    catch(Exception ex){
                        
                    }
                
                }
            }
            if(wou.mainInstalledProduct != null ){                
                 
                String whereClause ='';
                
                if(wou.mainInstalledProduct.GoldenID != null && wou.mainInstalledProduct.GoldenID !='')
                        whereClause ='GoldenAssetId__c = \''+wou.mainInstalledProduct.GoldenID+'\'';
                
                
                if(whereClause.length()>0)
                    whereClause = ' where '+whereClause;
                    
                String QueryString ='SELECT GoldenAssetId__c,Name,Id FROM SVMXC__Installed_Product__c '+whereClause +' Limit 1';
                try{ 
                        SVMXC__Installed_Product__c ipobj = Database.query(QueryString);
                            if(ipobj!= null )
                            {
                            
                                wo.SVMXC__Component__c =ipobj.id;
                            }
                }
                catch(Exception ex){
                        
                }
            
            }
            
            Database.SaveResult sresult = Database.insert(wo, false);
            
            
            
            WorkOrderResult wor = new WorkOrderResult();
            Boolean isHeaderSuccess= true;
            
             if (!sresult.isSuccess()) {
                String ErroMessage ='';
                for(Database.Error err : sresult.getErrors()) {
                            ErroMessage= ' '+err.getFields()+' : '+err.getMessage();                              
                }
                wor.success = false;
                wor.type = 'CREATED';
                wor.errorMessage = ErroMessage;             
                isHeaderSuccess = false;
              }
              else{
              
                    Id worid = sresult.getId();
                    SVMXC__Service_Order__c srObj = getWorkOrderObject(worid);
                
                    wor.success = true;
                    wor.type = 'CREATED';
                    wor.workOrderbFOID = srObj.id;
                    wor.workOrderNumber = srObj.name;
                    wor.workOrderBOReference = srObj.BackOfficeReference__c;
                    wor.workOrderGroupbFOID = srObj.WorkOrderGroup__c;
                    wor.workOrderGoupBOReference = srObj.WorkOrderGroup__r.BackOfficeReference__c;
                    //wor.TECH_WOBackOfficeRecordID
                    //wor.workOrderGroupbFOID
                    //wor.workOrderGoupBOReference
                    wor.countryOfBackOffice = srObj.CountryOfBackOffice__c;
                    wor.backOfficeSystem = srObj.BackOfficeSystem__c;
                    
              }
              
              if(wou.WorkDetail != null && isHeaderSuccess )
              {
                if(wou.WorkDetail.ServiceProductsWDs != null && wou.WorkDetail.ServiceProductsWDs.size()>0)
                {   
                    
                        List<SVMXC__Service_Order_Line__c>  solines = prepareServiceProducts(wou.WorkDetail.ServiceProductsWDs);
                        for(SVMXC__Service_Order_Line__c sl: solines){
                            sl.SVMXC__Service_Order__c = wor.workOrderbFOID;
                        }
                        
                        List<ServicedProductsWDResult> spResult = new List<ServicedProductsWDResult>();
                        WorkDetailsResult wdr = new WorkDetailsResult();
                        
                        if(solines != null && solines.size()>0)
                        {
                            Database.SaveResult[] slresult =Database.insert(solines, false);
                            for(Integer k=0;k<slresult.size();k++){
                                
                                ServicedProductsWDResult result = new ServicedProductsWDResult();
                                result.type ='CREATE';
                                result.installedProductbFOID = solines[k].SVMXC__Serial_Number__c;
                                result.workOrderbFOID = wor.workOrderbFOID ;
                                //result.installedProductGoldenID
                                //result.SerialNumber
                                Database.SaveResult sr =slresult[k];
                                if(!sr.isSuccess())
                                {
                                    String Message ='';
                                    for(Database.Error err : sr.getErrors()) {
                                        Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                                    }
                                    result.success = false;
                                    result.errorMessage = Message;
                                    
                                    
                                }
                                else{
                                    result.success = true;
                                
                                }
                                spResult.add(result);
                            
                            }
                        }
                        wdr.ServicedProductsWDResult = spResult;
                        wor.WorkDetailsResult = wdr;
                
                }
                
              }
              
            worList.add(wor);
            
            return worList;
    
    }
    
    public static List<SVMXC__Service_Order_Line__c> prepareServiceProducts(List<ServiceProductsWD> spwd){
        List<SVMXC__Service_Order_Line__c> ServiceProductsList = new  List<SVMXC__Service_Order_Line__c>();
        List<ServiceProducts>  spList = new List<ServiceProducts>();
        
        for(ServiceProductsWD spu: spwd){
                
                ServiceProducts spObj = new ServiceProducts();
        
            if(spu.InstalledProduct != null)
                getInstalledProductFields(spu.InstalledProduct ,spObj);
            if(spu.FSR != null)
                getTechnicianFields(spu.FSR,spObj);             
             spList.add(spObj);
            
        }
        List<SVMXC__Installed_Product__c> iplist = Database.query(getIPQuery());
        String Query='';        
        String QueryString ='';
        String WhereClause ='';
        QueryString = ' Select Id,FirstName,LastName,Email,MobilePhone,WorkPhone__c from Contact ';
        
        if(TFirstNameset != null && TFirstNameset.size()>0)
        {
            WhereClause +=  ' FirstName in  ('+ SOQLListFormat(TFirstNameset) +') ';
        }
        if(TLastNameset != null && TLastNameset.size()>0)
        {
            if(WhereClause.length()>0)
            WhereClause +=  ' OR  LastName in  ('+ SOQLListFormat(TLastNameset) +') ';
            else
            WhereClause +=  '  LastName in  ('+ SOQLListFormat(TLastNameset) +') ';
        }
        if(TEmailset != null && TEmailset.size()>0)
        {
            if(WhereClause.length()>0)
            WhereClause +=  ' OR  email in  ('+ SOQLListFormat(TEmailset) +') ';
            else
            WhereClause +=  '  email in  ('+ SOQLListFormat(TEmailset) +') ';
        }
            List<Sobject> contactlist  = new List<Sobject>();
         if(WhereClause.length()>0){
             Query =  QueryString +' where '+WhereClause;
             System.debug('\n WOWS Log : contact query '+Query);
            contactlist =  Database.query(Query);
         }
         
         
        String UQuery='';        
        String UQueryString ='';
        String UWhereClause ='';
        UQueryString = ' Select id,FirstName,LastName,Email,FederationIdentifier from User ';
        
        if(TFirstNameset != null && TFirstNameset.size()>0)
        {
            UWhereClause +=  ' FirstName in  ('+ SOQLListFormat(TFirstNameset) +') ';
        }
        if(TLastNameset != null && TLastNameset.size()>0)
        {
            if(UWhereClause.length()>0)
            UWhereClause +=  ' OR  LastName in  ('+ SOQLListFormat(TLastNameset) +') ';
            else
            UWhereClause +=  '  LastName in  ('+ SOQLListFormat(TLastNameset) +') ';
        }
        if(TEmailset != null && TEmailset.size()>0)
        {
            if(UWhereClause.length()>0)
            UWhereClause +=  ' OR  email in  ('+ SOQLListFormat(TEmailset) +') ';
            else
            UWhereClause +=  '  email in  ('+ SOQLListFormat(TEmailset) +') ';
        }
        if(SESAIDset != null && SESAIDset.size()>0)
        {
            if(UWhereClause.length()>0)
            UWhereClause +=  ' OR  FederationIdentifier in  ('+ SOQLListFormat(SESAIDset) +') ';
            else
            UWhereClause +=  '  FederationIdentifier in  ('+ SOQLListFormat(SESAIDset) +') ';
        }
        List<User> userlist = new List<User>();
        if(UWhereClause.length()>0){
            UQuery =  UQueryString +' where '+UWhereClause;  
            userlist =Database.query(UQuery);
        }
         
        
        Set<id> conidset = new Set<id>();
        Set<id> useridset = new Set<id>();
        
        for(ServiceProducts spu: spList){
            
            string key ='';
            if(spu.FirstName != null && spu.FirstName !='')
                    key +=spu.FirstName;
            if(spu.LastName != null && spu.LastName !='')
                key +=spu.LastName;
            if(spu.Email != null && spu.Email !='')
                key +=spu.Email;
                
            
        
            if(spu.RoleName == 'Schneider Employee'){
                
                if(spu.SESAID != null && spu.SESAID !='')
                    key +=spu.SESAID;
                
                for(User uobj: userlist){
                    String st='';
                    if(spu.SESAID != null && spu.SESAID !='')
                    {
                        if(uobj.FederationIdentifier != null)
                            st +=uobj.FederationIdentifier;
                    }
                    if(spu.FirstName != null && spu.FirstName !='')
                    {
                        if(uobj.FirstName != null)
                            st +=uobj.FirstName;
                    }
                    if(spu.LastName != null && spu.LastName !='')
                    {
                        if(uobj.LastName != null)
                            st +=uobj.LastName;
                    }
                    if(spu.Email != null && spu.Email !='')
                    {
                        if(uobj.Email != null)
                            st +=uobj.Email;
                    }
                    if(key == st){
                        
                        spu.UserId = uobj.id;
                        
                        break;
                    }
                                    
                }
                
            
            }
            else{
                
                for(Sobject sobj: contactlist){
                    String st='';
                    
                    if(spu.FirstName != null && spu.FirstName !='')
                    {
                        if(spu.FirstName != null)
                            st +=sobj.get('FirstName');
                    }
                    if(spu.LastName != null && spu.LastName !='')
                    {
                        if(spu.LastName != null)
                            st +=sobj.get('LastName');
                    }
                    if(spu.Email != null && spu.Email !='')
                    {
                        if(spu.Email != null)
                            st +=sobj.get('Email');
                    }
                    if(key == st){
                        
                        spu.ContactId = (Id)sobj.get('Id');
                        conidset.add(spu.ContactId);
                        break;
                    }
                    
                
                }
                
            
            }
            
            String ikey='';
            if(spu.GoldenID != null && spu.GoldenID !='')
                ikey +=spu.GoldenID;
            if(spu.IPName != null && spu.IPName !='')
                ikey +=spu.IPName;  
            if(spu.InstalledAtGoldenID != null && spu.InstalledAtGoldenID !='')
                ikey +=spu.InstalledAtGoldenID;
            if(spu.IPSerialNumber != null && spu.IPSerialNumber !='')
                ikey +=spu.IPSerialNumber;
            if(spu.IPSECommercialRef != null && spu.IPSECommercialRef !='')
                ikey +=spu.IPSECommercialRef;
            if(spu.IpinstalledAtCountryCode != null && spu.IpinstalledAtCountryCode !='')
                ikey +=spu.IpinstalledAtCountryCode;
            
            for(SVMXC__Installed_Product__c ipobj:iplist){
                String st ='';
                if(spu.GoldenID != null && spu.GoldenID !='')
                {
                    if(ipobj.GoldenAssetId__c != null)
                        st += ipobj.GoldenAssetId__c;
                }
                if(spu.IPName != null && spu.IPName !='')
                {
                    if(ipobj.Name != null)
                        st += ipobj.Name;
                }
                if(spu.InstalledAtGoldenID != null && spu.InstalledAtGoldenID !='')
                {
                    if(ipobj.SVMXC__Company__r.SEAccountID__c != null)
                        st += ipobj.SVMXC__Company__r.SEAccountID__c;
                }
                if(spu.IPSerialNumber != null && spu.IPSerialNumber !='')
                {
                    if(ipobj.CustomerSerialNumber__c != null)
                        st += ipobj.CustomerSerialNumber__c;
                }
                if(spu.IPSECommercialRef != null && spu.IPSECommercialRef !='')
                {
                    if(ipobj.SchneiderCommercialReference__c != null)
                        st += ipobj.SchneiderCommercialReference__c;
                }
                if(spu.IpinstalledAtCountryCode != null && spu.IpinstalledAtCountryCode !='')
                {
                    if(ipobj.SVMXC__Company__r.Country__r.CountryCode__c != null)
                        st += ipobj.SVMXC__Company__r.Country__r.CountryCode__c;
                }
                
                if(ikey == st)
                {
                    
                    spu.ipid = ipobj.id;
                    break;
                }
        
            }
            
            
        }       
        
        List<SVMXC__Service_Group_Members__c> sgmlist = [select id, SVMXC__Salesforce_User__c , ThirdPartyContact__c,SVMXC__Role__c  from SVMXC__Service_Group_Members__c where SVMXC__Salesforce_User__c in : useridset or ThirdPartyContact__c in : conidset ];
        for(ServiceProducts spu: spList){       
            
            for(SVMXC__Service_Group_Members__c sg:sgmlist){
                if(spu.RoleName == 'Schneider Employee')
                {                       
                    if(spu.UserId == sg.SVMXC__Salesforce_User__c){
                        spu.Fsrid = sg.id;
                    }               
                }
                else{
                    if(spu.ContactId == sg.ThirdPartyContact__c){
                        spu.Fsrid = sg.id;
                    }
                
                }
            
            }
        
        }
        
        RecordType rtRecord ;
        for(RecordType rt: [SELECT DeveloperName,Id,Name,SobjectType FROM RecordType where SobjectType ='SVMXC__Service_Order_Line__c']){
            woDetailsMap.put(rt.DeveloperName , rt);
        }
        if(woDetailsMap.containskey('Products_Serviced')){
            rtRecord =woDetailsMap.get('Products_Serviced');
        }
        for(ServiceProducts spu: spList){   
            SVMXC__Service_Order_Line__c sol = new SVMXC__Service_Order_Line__c();
            sol.SVMXC__Serial_Number__c = spu.ipid;
            sol.SVMXC__Group_Member__c = spu.Fsrid;
            sol.RecordTypeId = rtRecord.id;
            ServiceProductsList.add(sol);
        
        }
        
        
        
        return ServiceProductsList;
    
    }
    
    
    public Static Set<String> SESAIDset = new Set<string>();
    public Static set<String> TFirstNameset = new Set<String>();
    public Static set<String> TLastNameset = new Set<String>();
    public Static set<String> TEmailset = new Set<String>();
    
    public static  void getTechnicianFields(Technician tecu,ServiceProducts spObj){
    
        if(tecu != null ){
        
            if(tecu.SESAID != null && tecu.SESAID !='')
            {
                SESAIDset.add(tecu.SESAID );
                spObj.SESAID = tecu.SESAID ;
            }
            if(tecu.FirstName != null && tecu.FirstName !='')
            {
                TFirstNameset.add(tecu.FirstName );
                spObj.FirstName = tecu.FirstName ;
            }
            if(tecu.LastName != null && tecu.LastName !='')
            {
                TLastNameset.add(tecu.LastName );
                spObj.LastName = tecu.LastName ;
            }
            if(tecu.Email != null && tecu.Email !='')
            {
                TEmailset.add(tecu.Email );
                spObj.Email = tecu.Email ;
            }
            if(tecu.RoleName != null && tecu.RoleName !='')
            {               
                spObj.RoleName = tecu.RoleName ;
            }
            
        
        
        }
    
    }
    
    webservice static WorkOrderSyncDetailsResult updateWorkOrderSyncDetails(WorkOrderSyncDetails request){
            WorkOrderSyncDetailsResult result = new WorkOrderSyncDetailsResult();
        if(request != null)
        {
                SVMXC__Service_Order__c wo = new SVMXC__Service_Order__c();
            if(request.workOrderbFOId != null)
            {
            
                wo=[select id,SynchronizationLog__c,FirstSynchronizationDate__c,LastSynchronizationDate__c ,name from SVMXC__Service_Order__c where id =:request.workOrderbFOId];
            
            }
            
            if(request.Event == 'WO.CREATION'){
            
                if(request.success){
                    wo.SynchronizationLog__c ='BO Service Order CREATED';
                }
                else{
                    wo.SynchronizationLog__c ='BO Service Order NOT CREATED due to ['+request.BOerrorMessage+']';
                }
                wo.FirstSynchronizationDate__c = system.now();
                wo.LastSynchronizationDate__c = system.now();
            
            }
            else if(request.Event == 'WO.RELEASE'){
            
                if(request.success){
                    wo.SynchronizationLog__c ='BO Service Order RELEASE';
                }
                else{
                    wo.SynchronizationLog__c ='BO Service Order NOT RELEASE due to ['+request.BOerrorMessage+']';
                }
                wo.FirstSynchronizationDate__c = system.now();
                wo.LastSynchronizationDate__c = system.now();
            
            }
        
        }
        else{
        
            result.success = false;
            result.errorMessage = 'Please send WorkOrderSyncDetails';
        
        }
        
        
        return result;
    
    }
    

    public Static SVMXC__Service_Order__c getWorkOrderObject( Id woid){
    
        SVMXC__Service_Order__c  wo = new SVMXC__Service_Order__c();
        wo = [select ID,Name,SVMXC__Company__c,SVMXC__Contact__c,CustomerRequestedDate__c,CustomerRequestedTime__c,BusinessUnit__c,SVMXC__Priority__c,SVMXC__Scheduled_Date_Time__c,WorkOrderGroup__c,WorkOrderGroup__r.BackOfficeReference__c,WorkOrderName__c,Comments_to_Planner__c,CountryOfBackOffice__c,BackOfficeSystem__c,SVMXC__Order_Status__c,SubStatus__c,Work_Order_Category__c,SVMXC__Order_Type__c,WorkOrderSubType__c,IsBillable__c,SVMXC__Billing_Type__c,SVMXC__Group_Member__c,OwnerID,Parent_Work_Order__c,SoldToAccount__c,SVMXC__Component__c,SVMXC__Product__c,Project__c,SVMXC__Service_Contract__c,ServiceLine__c,BackOfficeReference__c from SVMXC__Service_Order__c where id =:woid];
        return wo;
    }
    public Static List<ServiceProductsWD>  getServiceProducts( Id woid ,Id rtid){
        List<ServiceProductsWD> splist = new List<ServiceProductsWD>();
        Set<id> ipidSet = new Set<id>();
        Set<id> fsridSet = new Set<id>();
        for(SVMXC__Service_Order_Line__c  wd:[select id, SVMXC__Serial_Number__c,SVMXC__Group_Member__c from SVMXC__Service_Order_Line__c where SVMXC__Service_Order__c =:woid and RecordTypeId =:rtid ]){            
            if(wd.SVMXC__Serial_Number__c != null ){            
                ipidSet.add(wd.SVMXC__Serial_Number__c);
            }
            if(wd.SVMXC__Group_Member__c != null ){         
                fsridSet.add(wd.SVMXC__Group_Member__c);
            }            
        }
        prepareIPMap(ipidSet);
        prepareTechnicians(fsridSet);
        
        for(SVMXC__Service_Order_Line__c  wd:[select id,SVMXC__Service_Order__c, SVMXC__Serial_Number__c,SVMXC__Group_Member__c ,SVMXC__Work_Description__c from SVMXC__Service_Order_Line__c where SVMXC__Service_Order__c =:woid and RecordTypeId =:rtid ]){  
            ServiceProductsWD sp = new ServiceProductsWD();
            sp.workOrderbFOID = wd.SVMXC__Service_Order__c;
            if(wd.SVMXC__Group_Member__c != null)
            {
                if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                {
                    sp.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                }
            }
            if(wd.SVMXC__Serial_Number__c != null)
            {
                if(IPUnitMap.containskey(wd.SVMXC__Serial_Number__c))
                {
                    sp.InstalledProduct = IPUnitMap.get(wd.SVMXC__Serial_Number__c);
                }
            
            }
            sp.workDescription = wd.SVMXC__Work_Description__c;
            splist.add(sp);
        
        }
        
        
            
        return splist;
        
    }
    public Static   WorkDetail  getWorkDetails( Id woid ,String event){
        WorkDetail wDetail=new WorkDetail();
        Set<id> ipidSet = new Set<id>();
        Set<id> fsridSet = new Set<id>();
        
        RecordType TimeRt =woDetailsMap.get('Labor');
        RecordType ExpenseRt = woDetailsMap.get('Expense');
        RecordType ServiceProductRt =woDetailsMap.get('Products_Serviced');
        ID timer = TimeRt.id;
        ID expense = ExpenseRt.id;
        ID serviceproduct = ServiceProductRt.id;
        
        List<TimeWD> TimeWDs = new List<TimeWD>();
        List<ExpenseWD> ExpenseWDs  = new List<ExpenseWD>();  
        List<ServiceProductsWD> ServiceProductsWDs = new List<ServiceProductsWD>();
            
        
        if(event == 'WO.RELEASE'){
             
             for(SVMXC__Service_Order_Line__c  wd:[select id,SVMXC__Service_Order__c,SVMXC__Line_Type__c ,SVMXC__Activity_Type__c,HourType__c,SVMXC__Serial_Number__c,SVMXC__Group_Member__c from SVMXC__Service_Order_Line__c where SVMXC__Service_Order__c =:woid and ( RecordTypeId =:timer OR RecordTypeId =:expense OR RecordTypeId =:serviceproduct)])
             {
                if(wd.SVMXC__Serial_Number__c != null ){            
                    ipidSet.add(wd.SVMXC__Serial_Number__c);
                }
                if(wd.SVMXC__Group_Member__c != null ){         
                    fsridSet.add(wd.SVMXC__Group_Member__c);
                } 
             
             
             }
             prepareIPMap(ipidSet);
             prepareTechnicians(fsridSet);
             for(SVMXC__Service_Order_Line__c  wd:[select id,RecordTypeId ,SVMXC__Service_Order__c,SVMXC__Line_Type__c ,SVMXC__Activity_Type__c,HourType__c,SVMXC__Serial_Number__c,SVMXC__Group_Member__c,SVMXC__Expense_Type__c,SVMXC__Date_Received__c,IsBillable__c,SVMXC__Work_Description__c ,SVMXC__Start_Date_and_Time__c ,SVMXC__End_Date_and_Time__c ,TotalTime__c from SVMXC__Service_Order_Line__c where SVMXC__Service_Order__c =:woid and ( RecordTypeId =:timer OR RecordTypeId =:expense OR RecordTypeId =:serviceproduct)])
             {              
                
                
                    if(wd.RecordTypeId == timer){
                        TimeWD t = new TimeWD();
                        t.workOrderbFOID = wd.SVMXC__Service_Order__c;
                        t.workDetailbFOID = wd.id;
                        t.lineType = wd.SVMXC__Line_Type__c;
                        t.activityType = wd.SVMXC__Activity_Type__c;
                        t.hourType = wd.HourType__c;
                        if(wd.SVMXC__Group_Member__c != null)
                        {
                            if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                            {
                                t.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                            }
                        }
                        t.isBillable = wd.IsBillable__c;
                        t.startDateTime = String.valueOf(wd.SVMXC__Start_Date_and_Time__c);
                        t.endDateTime = String.valueOf(wd.SVMXC__End_Date_and_Time__c);
                        t.totalTime = wd.TotalTime__c;
                        t.workDescription = wd.SVMXC__Work_Description__c;
                        t.workDetailPlannedbFOID = wd.SVMXC__Work_Detail__c;
                        TimeWDs.add(t);
                        
                    }
                    else if(wd.RecordTypeId == expense){
                        ExpenseWD e = new ExpenseWD();
                        e.workOrderbFOID = wd.SVMXC__Service_Order__c;
                        e.workDetailbFOID = wd.id;
                        e.lineType = wd.SVMXC__Line_Type__c;
                        e.expenseType = wd.SVMXC__Expense_Type__c;
                        e.expenseDate = String.valueOf(wd.SVMXC__Date_Received__c);
                        e.isBillable = wd.IsBillable__c;
                        //e.billingType = wd.
                        e.expenseQuantity = wd.ExpenseQuantity__c;
                        e.linePricePerUnit = wd.LinePricePerUnit__c;
                        e.currencyIsoCode = wd.CurrencyIsoCode;
                        e.workDescription = wd.SVMXC__Work_Description__c;
                        e.workDetailPlannedbFOID = wd.SVMXC__Work_Detail__c;
                        ExpenseWDs.add(e);
                    }
                    else if(wd.RecordTypeId == serviceproduct){
                         ServiceProductsWD sp = new ServiceProductsWD();
                        sp.workOrderbFOID = wd.SVMXC__Service_Order__c;
                        if(wd.SVMXC__Group_Member__c != null)
                        {
                            if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                            {
                                sp.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                            }
                        }
                        if(wd.SVMXC__Serial_Number__c != null)
                        {
                            if(IPUnitMap.containskey(wd.SVMXC__Serial_Number__c))
                            {
                                sp.InstalledProduct = IPUnitMap.get(wd.SVMXC__Serial_Number__c);
                            }
                        
                        }
                        sp.workDescription = wd.SVMXC__Work_Description__c;
                        ServiceProductsWDs.add(sp);
                    
                    }
             
             }
            wDetail.TimeWDs = TimeWDs;
            wDetail.ExpenseWDs = ExpenseWDs;
            wDetail.ServiceProductsWDs = ServiceProductsWDs;
        
        }
    
        
        
        return wDetail;
    
    }
    public static Map<Id,InstalledProduct> IPUnitMap = new Map<Id,InstalledProduct>();
    public Static void prepareIPMap(Set<id> idset){
           
            for(SVMXC__Installed_Product__c ipobj: [select id, name,GoldenAssetId__c,SVMXC__Company__r.SEAccountID__c,CustomerSerialNumber__c,SchneiderCommercialReference__c,SVMXC__Country__c from SVMXC__Installed_Product__c where id in :idset ])
            {
                InstalledProduct ipu = new InstalledProduct();
                ipu.GoldenID = ipobj.GoldenAssetId__c;
                ipu.Name =  ipobj.Name;
                ipu.InstalledAtGoldenID = ipobj.SVMXC__Company__r.SEAccountID__c;
                ipu.SerialNumber = ipobj.CustomerSerialNumber__c;
                ipu.SECommercialRef = ipobj.SchneiderCommercialReference__c;
                ipu.installedAtCountryCode = ipobj.SVMXC__Country__c;
                IPUnitMap.put(ipobj.id, ipu);
            }
        
        
    }
    public static Map<Id,Technician> TechnicianMap = new Map<Id,Technician>();
    public Static void  prepareTechnicians(Set<id> idset){
            
            for(SVMXC__Service_Group_Members__c gm:[select id, SESAID__c,SVMXC__Salesforce_User__c,SVMXC__Salesforce_User__r.FirstName,SVMXC__Salesforce_User__r.LastName,SVMXC__Salesforce_User__r.email,ThirdPartyContact__c,ThirdPartyContact__r.FirstName,ThirdPartyContact__r.LastName,SVMXC__Email__c,SVMXC__Role__c  from SVMXC__Service_Group_Members__c]){         
                Technician t = new Technician();
                t.SESAID  = gm.SESAID__c;
                t.FirstName = gm.SVMXC__Salesforce_User__r.FirstName;
                t.LastName = gm.SVMXC__Salesforce_User__r.LastName;
                t.Email = gm.SVMXC__Salesforce_User__r.email;
                TechnicianMap.put(gm.id,t);
            }
                
        
    }

    public Static  void  populateWorkOrderFields(SVMXC__Service_Order__c wo){
    
            woresult.workOrderbFOID = wo.id;
            woresult.workOrderNumber = wo.Name;
            //woresult.installedAtAccount = 
            //woresult.contact
            woresult.customerRequestedDate = wo.CustomerRequestedDate__c;
            woresult.customerRequestedTime = wo.CustomerRequestedTime__c;           
            woresult.serviceBusinessUnit = wo.BusinessUnit__c;
            woresult.priority = wo.SVMXC__Priority__c;
            woresult.scheduledDateTime = String.valueOf(wo.SVMXC__Scheduled_Date_Time__c);
            woresult.workOrderGroupbFOID = wo.WorkOrderGroup__c;            
            woresult.workOrderName = wo.WorkOrderName__c;
            //woresult.workOrderReason
            woresult.commentToPlanner = wo.Comments_to_Planner__c;
            woresult.countryOfBackOffice = wo.CountryOfBackOffice__c;
            woresult.backOfficeSystem = wo.BackOfficeSystem__c;
            woresult.workOrderStatus = wo.SVMXC__Order_Status__c;
            woresult.workOrderSubStatus = wo.SubStatus__c;
            woresult.workOrderCategory = wo.Work_Order_Category__c;
            woresult.workOrderType = wo.SVMXC__Order_Type__c;
            woresult.workOrderSubType = wo.WorkOrderSubType__c;         
            woresult.isBillable = wo.IsBillable__c ;
            woresult.billingType = wo.SVMXC__Billing_Type__c;
            //woresult.primaryFSR = wo.
            //woresult.ownerSESAID
            woresult.parentWObFOID = wo.Parent_Work_Order__c;
            woresult.soldToAccountbFOID = wo.SoldToAccount__c;
            //woresult.mainInstalledProduct = String.valueOf(wo.SVMXC__Component__c);
            woresult.productbFOID = String.valueOf(wo.SVMXC__Product__c);
            woresult.projectNumber = String.valueOf(wo.Project__c);
            //woresult.serviceContractBOReference =  wo.
            //woresult.serviceLineBOReference
            /*
            woresult.salesOrderNumber
            woresult.salesOrderLineNumber
            woresult.PONumber
            woresult.serviceCenterTerritoryName
            woresult.customerReferenceNumber
            woresult.TECH_FOLastUpdateTimestamp
            
            */


            
        
    }
    public static SVMXC__Service_Order__c getWorkOrder(WorkOrder wou ){
    
        SVMXC__Service_Order__c  wo = new SVMXC__Service_Order__c();
        wo.WorkOrderName__c =  wou.workOrderName;
        wo.CustomerRequestedTime__c = wou.customerRequestedTime;
        wo.BusinessUnit__c = wou.serviceBusinessUnit ;
        wo.SVMXC__Priority__c = wou.priority;
        wo.Comments_to_Planner__c = wou.commentToPlanner;
        wo.CountryOfBackOffice__c = wou.countryOfBackOffice;
        wo.BackOfficeSystem__c = wou.backOfficeSystem;
        wo.SVMXC__Order_Status__c = wou.workOrderStatus;
        wo.SubStatus__c = wou.workOrderSubStatus;
        wo.Work_Order_Category__c = wou.workOrderCategory;
        wo.SVMXC__Order_Type__c = wou.workOrderType;
        wo.WorkOrderSubType__c = wou.workOrderSubType;
        wo.IsBillable__c =  wou.isBillable;
        wo.SVMXC__Billing_Type__c =  wou.billingType;   
        wo.CustomerRequestedDate__c = wou.customerRequestedDate;
        wo.SVMXC__Problem_Description__c =wou.workOrderReason;      
        wo.TECH_FOLastUpdate_Timestamp__c =wou.TECH_FOLastUpdateTimestamp;
        wo.PONumber__c  = wou.PONumber;
        wo.salesOrderLineNumber__c = wou.salesOrderLineNumber;
        wo.customerReferenceNumber__c = wou.customerReferenceNumber;        
        wo.Sales_Order_Number__c = wou.salesOrderNumber;
        wo.CurrencyIsoCode = wou.WOcurrencyIsCode;
        wo.EstimatedExpenseCost__c = wou.estimatedExpenseCost;
        wo.EstimatedMaterialCost__c = wou.estimatedMaterialCost;
        //wo.estimatedLaborCost
        wo.BackOfficeReference__c = wou.WOGBackOfficeReference;
        wo.QuotationLink__c = wou.quotationNumber;
        wo.BillToAccount__c = wou.billToAccountbFOID;
        
        
        
           // webservice String  serviceContractBOReference;
           // webservice String  serviceLineBOReference;
           // webservice String  salesOrderNumber;
           
           // webservice String  PONumber;
           // webservice String  serviceCenterTerritoryName;
           
            
            
            //webservice Id   serviceLinebFOID;
            //webservice String   WOBackOfficeReference;
            //webservice String   TECH_WOBackOfficeRecordID;
            
            
            //webservice Decimal   estimatedLaborCost;
            
    
        return wo;
    }
    public static  void getContactFields(Contact con){

        if(con != null)
        {                   
            if(con.GoldenID != null && con.GoldenID!='')
                GoldenIDset.add(con.GoldenID);
            if(con.firstName != null && con.firstName!='')
                firstNameset.add(con.firstName);
            if(con.localFirstName != null && con.localFirstName!='')
                localFirstNameset.add(con.localFirstName);
            if(con.middleInitial != null && con.middleInitial!='')
                middleInitialset.add(con.middleInitial);
            if(con.lastName != null && con.lastName!='')
                lastNameset.add(con.lastName);
            if(con.localLastName != null && con.localLastName!='')
                localLastNameset.add(con.localLastName);
            if(con.emailAddress != null && con.emailAddress!='')
                emailAddressset.add(con.GoldenID);
            if(con.mobilePhone != null && con.mobilePhone!='')
                mobilePhoneset.add(con.mobilePhone);
            if(con.workPhone != null && con.workPhone!='')
                workPhoneset.add(con.workPhone);                    
        }

    } 


    public static  void getInstalledProductFields(InstalledProduct ipu,ServiceProducts spObj){
    
        if(ipu != null ){
        
            if(ipu.GoldenID != null && ipu.GoldenID !='')
             {   
                IPGoldenIDset.add(ipu.GoldenID );
                spObj.GoldenID = ipu.GoldenID;
             }
            if(ipu.Name != null && ipu.Name !='')
             {
                Nameset.add(ipu.Name );
                spObj.IPName = ipu.Name;
             }
            if(ipu.InstalledAtGoldenID != null && ipu.InstalledAtGoldenID !='')
              {
                InstalledAtGoldenIDset.add(ipu.InstalledAtGoldenID );
                spObj.InstalledAtGoldenID = ipu.InstalledAtGoldenID;
              }
            if(ipu.SerialNumber != null && ipu.SerialNumber !='')
              {  
                SerialNumberset.add(ipu.SerialNumber );
                spObj.IPSerialNumber = ipu.SerialNumber;
              }
            if(ipu.SECommercialRef != null && ipu.SECommercialRef !='')
             {
                SECommercialRefset.add(ipu.SECommercialRef );
                spObj.IPSECommercialRef = ipu.SECommercialRef;
             }
            if(ipu.installedAtCountryCode != null && ipu.installedAtCountryCode !='')
             {
                installedAtCountryCodeset.add(ipu.installedAtCountryCode );
                spObj.IpinstalledAtCountryCode = ipu.installedAtCountryCode;
             }
        
        }
    
    }
    public Static String getIPQuery(){
        
                String Query=' select id, name ,GoldenAssetId__c,SVMXC__Company__c,SVMXC__Company__r.SEAccountID__c,CustomerSerialNumber__c, SchneiderCommercialReference__c,SVMXC__Company__r.Country__r.CountryCode__c from SVMXC__Installed_Product__c ';
        
                String QueryString ='';
                String WhereClause ='';
        
        if(IPGoldenIDset != null && IPGoldenIDset.size()>0)
        {
                WhereClause =' GoldenAssetId__c in  ('+ SOQLListFormat(IPGoldenIDset) +') ';
        
        }
        if(Nameset != null && Nameset.size()>0)
        {
            if(WhereClause.length()>0)
            WhereClause +=  ' OR  Name in  ('+ SOQLListFormat(Nameset) +') ';
            else
            WhereClause +=  '  Name in  ('+ SOQLListFormat(Nameset) +') ';
        }
        if(InstalledAtGoldenIDset != null && InstalledAtGoldenIDset.size()>0)
        {
            if(WhereClause.length()>0)
            WhereClause +=  ' OR  SVMXC__Company__r.SEAccountID__c in  ('+ SOQLListFormat(InstalledAtGoldenIDset) +') ';
            else
            WhereClause +=  '  SVMXC__Company__r.SEAccountID__c in  ('+ SOQLListFormat(InstalledAtGoldenIDset) +') ';
        }
        if(SerialNumberset != null && SerialNumberset.size()>0)
        {
            if(WhereClause.length()>0)
            WhereClause +=  ' OR  CustomerSerialNumber__c in  ('+ SOQLListFormat(SerialNumberset) +') ';
            else
            WhereClause +=  '  CustomerSerialNumber__c in  ('+ SOQLListFormat(SerialNumberset) +') ';
        }
        if(SECommercialRefset != null && SECommercialRefset.size()>0)
        {
            if(WhereClause.length()>0)
            WhereClause +=  ' OR  SchneiderCommercialReference__c in  ('+ SOQLListFormat(SECommercialRefset) +') ';
            else
            WhereClause +=  '  SchneiderCommercialReference__c in  ('+ SOQLListFormat(SECommercialRefset) +') ';
        }
        if(installedAtCountryCodeset != null && installedAtCountryCodeset.size()>0)
        {
            if(WhereClause.length()>0)
            WhereClause +=  ' OR  SVMXC__Company__r.Country__r.CountryCode__c in  ('+ SOQLListFormat(installedAtCountryCodeset) +') ';
            else
            WhereClause +=  '  SVMXC__Company__r.Country__r.CountryCode__c in  ('+ SOQLListFormat(installedAtCountryCodeset) +') ';
        }
        
        QueryString = Query +' Where '+ WhereClause;
        System.debug('\n Log WWS : ip query '+QueryString);
        return QueryString;
    
    }
    
    
    
    
    public static String getContactQuery(){
        
                String Query='';
        
                String QueryString ='';
                String WhereClause ='';
                QueryString = ' Select id,SEContactID__c,FirstName,LocalFirstName__c,MidInit__c,LocalMidInit__c,LastName,LocalLastName__c,Email,MobilePhone,WorkPhone__c from Contact ';
                
                if(GoldenIDset != null && GoldenIDset.size()>0)
                {
                    WhereClause +=  ' SEContactID__c in  ('+ SOQLListFormat(GoldenIDset) +') ';
                }
                if(firstNameset != null && firstNameset.size()>0)
                {
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR  FirstName in  ('+ SOQLListFormat(firstNameset) +') ';
                    else
                    WhereClause +=  '  FirstName in  ('+ SOQLListFormat(firstNameset) +') ';
                }
                if(localFirstNameset != null && localFirstNameset.size()>0)
                {
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR LocalFirstName__c in ('+ SOQLListFormat(localFirstNameset) +') ';
                    else
                    WhereClause +=  ' LocalFirstName__c in ('+ SOQLListFormat(localFirstNameset) +') ';
                }
                if(middleInitialset != null && middleInitialset.size()>0)
                {   
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR MidInit__c in ('+ SOQLListFormat(middleInitialset) +') ';
                    else
                    WhereClause +=  ' MidInit__c in ('+ SOQLListFormat(middleInitialset) +') ';
                }
                if(localMiddleInitialset != null && localMiddleInitialset.size()>0)
                {   
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR LocalMidInit__c in ('+ SOQLListFormat(localMiddleInitialset) +') ';
                    else
                    WhereClause +=  ' LocalMidInit__c in ('+ SOQLListFormat(localMiddleInitialset) +') ';
                }
                if(lastNameset != null && lastNameset.size()>0)
                {
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR LastName in ('+ SOQLListFormat(lastNameset) +') ';
                    else
                    WhereClause +=  ' LastName in ('+ SOQLListFormat(lastNameset) +') ';
                }
                if(localLastNameset != null && localLastNameset.size()>0)
                {
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR LocalLastName__c in ('+ SOQLListFormat(localLastNameset) +') ';
                    else
                    WhereClause +=  ' LocalLastName__c in ('+ SOQLListFormat(localLastNameset) +') ';
                }
                if(emailAddressset != null && emailAddressset.size()>0)
                {
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR Email in ('+ SOQLListFormat(emailAddressset) +') ';
                    else
                    WhereClause +=  ' Email in ('+ SOQLListFormat(emailAddressset) +') ';
                }
                if(mobilePhoneset != null && mobilePhoneset.size()>0)
                {
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR MobilePhone in ('+ SOQLListFormat(mobilePhoneset) +') ';
                    else
                    WhereClause +=  ' MobilePhone in ('+ SOQLListFormat(mobilePhoneset) +') ';
                }
                if(workPhoneset != null && workPhoneset.size()>0)
                {
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR WorkPhone__c in ('+ SOQLListFormat(workPhoneset) +') ';
                    else
                    WhereClause +=  ' WorkPhone__c in ('+ SOQLListFormat(workPhoneset) +') ';
                }
                Query =  QueryString +' where '+WhereClause;
                System.debug('\n scLog :'+Query);
                return Query;
        
    }
    public static Id getMatchedContact(Contact ucon , List<Sobject> conList){
        
        
        ID ContactId ;
        Contact c = ucon;
        String key ='';
        String ckey ='';
        if(ucon.GoldenID != null && ucon.GoldenID !='')
            key +=ucon.GoldenID;
        if(ucon.firstName != null && ucon.firstName !='')
            key +=ucon.firstName;
        if(ucon.localFirstName != null && ucon.localFirstName !='')
            key +=ucon.localFirstName;
        if(ucon.middleInitial != null && ucon.middleInitial !='')
            key +=ucon.middleInitial;
        if(ucon.localMiddleInitial != null && ucon.localMiddleInitial !='')
            key +=ucon.localMiddleInitial;
        if(ucon.lastName != null && ucon.lastName !='')
            key +=ucon.lastName;
        if(ucon.localLastName != null && ucon.localLastName !='')
            key +=ucon.localLastName;
        if(ucon.emailAddress != null && ucon.emailAddress !='')
            key +=ucon.emailAddress;
        if(ucon.mobilePhone != null && ucon.mobilePhone !='')
            key +=ucon.mobilePhone;
        if(ucon.workPhone != null && ucon.workPhone !='')
            key +=ucon.workPhone;   
          System.debug('\n Log SC: key '+key);  
            
        for(Sobject con: conList){
            ckey ='';
            
            if(c.GoldenID != null && c.GoldenID !='')
                if(con.get('SEContactID__c') != null && con.get('SEContactID__c') !='')
                    ckey +=con.get('SEContactID__c');                   
            if(c.firstName != null && c.firstName !='')
                if(con.get('FirstName') != null && con.get('FirstName') !='')
                    ckey +=con.get('FirstName');
            if(c.localFirstName != null && c.localFirstName !='')
                if(con.get('LocalFirstName__c') != null && con.get('LocalFirstName__c') !='')
                    ckey +=con.get('LocalFirstName__c');
            if(c.middleInitial != null && c.middleInitial !='')
                if(con.get('MidInit__c') != null && con.get('MidInit__c') !='')
                    ckey +=con.get('MidInit__c');           
            if(c.localMiddleInitial != null && c.localMiddleInitial !='')
                if(con.get('LocalMidInit__c') != null && con.get('LocalMidInit__c') !='')
                    ckey +=con.get('LocalMidInit__c');
            if(c.lastName != null && c.lastName !='')
                if(con.get('LastName') != null && con.get('LastName') !='')
                    ckey +=con.get('LastName');
            if(c.localLastName != null && c.localLastName !='')
                if(con.get('LocalLastName__c') != null && con.get('LocalLastName__c') !='')
                    ckey +=con.get('LocalLastName__c');
            if(c.emailAddress != null && c.emailAddress !='')
                if(con.get('Email') != null && con.get('Email') !='')
                    ckey +=con.get('Email');
            if(c.mobilePhone != null && c.mobilePhone !='')
                if(con.get('MobilePhone') != null && con.get('MobilePhone') !='')
                    ckey +=con.get('MobilePhone');
            if(c.workPhone != null && c.workPhone !='')
                if(con.get('WorkPhone__c') != null && con.get('WorkPhone__c') !='')
                    ckey +=con.get('WorkPhone__c'); 
                    
            System.debug('\n Log SC: ckey '+ckey);                  
                    
                    if(key == ckey){                    
                        ContactId = con.id;    
                        break ;             
                    }
            
            
        } 
        System.debug('\n Log SC: ContactId '+ContactId);      
        return ContactId;
        
    }
    
     //description : format the list to inorporate to a dynamic request
    //By adding quotes between each values
    //input list of string
    //outpu string formated list
    public static string SOQLListFormat(set<string> input){   
        String SOQL_ListFormat = '';
        for (string Value : input) {
                String value_in_quotes = '\''+Value+'\'';
        if (SOQL_ListFormat!='') { SOQL_ListFormat+=','; }  //  add a comma if this isn't the first one
                SOQL_ListFormat += value_in_quotes;
        }   
        return SOQL_ListFormat;
    }


}