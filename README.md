SMART HOME AUTOMATION SYSTEM


Objective:
To enhance energy efficiency through the implementation of analytics and recommendations, providing users with actionable insights to optimize device usage and contribute to a sustainable efficient smart home environment.

Database Schema:

The database comprises several interconnected tables to manage information related to users, rooms, devices, device events, settings, device setting values, firmware history, and power consumption history. Additionally, various views, stored procedures, and triggers have been implemented to facilitate data analysis and manipulation.

ER Diagram:

 <img width="519" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/c4a5d1b4-5745-4635-ae82-ea54576f9d79">




Tables Description:
Users: Contains user information.

<img width="468" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/06b6737d-a54f-4b5a-a8d0-d4096a64a3d3">

 
Room: Contains room information.

<img width="302" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/dd8de554-a1a1-48f7-863f-450de028cbae">


Devices: Contains device information, and the 'DevStatus' field denotes the status of the device.

<img width="468" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/b3ba2fe7-a26e-4e85-8a7c-a1ff450725a5">

 
DeviceEvents: Contains device logs, and records events such as device turning ON/OFF, maintenance, firmware updates, and other updates.

<img width="306" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/bd5f4a22-010a-45fa-ba81-f6ff63cc0f8d">

 
Setting: Contains types of settings available for devices.

<img width="182" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/8d480111-e035-4024-a563-6383bf1ee1de">

 
DeviceSettingValue: Contains information about the setting values for a device.

 <img width="342" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/4fa9991e-cb42-43de-bded-0107a747ce8f">

FirmwareHistory: Maintains firmware update history for all devices.

<img width="468" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/76cf1628-7bef-4619-b8dc-4dda8f0265b8">

 
PowerConsumptionHistory: Records the history of power consumption each time a device is turned ON.

<img width="252" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/625ab6c4-4e29-491d-8bba-3c131315e583">

 
SystemLogs: Records all the actions performed by the database users. 

 <img width="268" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/64ee30d4-5ac1-4b6c-91b4-e701597c6650">



Views Descriptions:
1.	DeviceSettingInfo: Provides a detailed view of settings for devices, including DeviceName, RoomName, SettingName, and SettingValue.

  	<img width="468" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/a56466d1-c075-4334-8713-d1792c1375f1">

 
2.	PowerConsumptionTrends: Displays the total power consumption till date in a detailed view.

    <img width="468" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/c72eff97-4fa9-407b-a5ce-e07e29a131d9">

 

Stored Procedures:
1.	CalculatePowerConsumption:
•	Takes DeviceID, Start Date, and End Date as parameters.
•	Returns the total power consumption for the given period.

<img width="468" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/8f412a11-fd89-4166-9749-123734acac23">


 
2.	CalculateMaintenanceCount:
•	Takes DeviceID, Start Date, and End Date as parameters.
•	Returns the number of times the device has undergone maintenance in the specified period.

<img width="296" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/1471ea26-5877-44d6-99ec-0f0e7ff48e8c">

 

3.	CalculateFirmwareUpdates:
•	Takes DeviceID, Start Date, and End Date as parameters.
•	Returns the number of times the device has been updated to the latest firmware in the specified period.

<img width="288" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/6ef4a745-1e85-4fff-98cf-175c6a727c46">


 
5.	Maintenance/PowerOff/PowerOn:
•	Procedures to update the 'DevStatus' in the Devices table.


Triggers:
1.	trg_PowerConsumption:
•	Triggered before updating the 'Devices' table when 'DevStatus' changes to 'PowerOff.'
•	Calculates power consumption based on the time since the last 'PowerOn' event and inserts the data into the 'PowerConsumptionHistory' table.

<img width="379" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/1f254d92-310a-46a5-8d8e-16192172081f">

 
2.	trg_DeviceUpdate:
•	Triggered after an update action is performed on the 'Devices' table.
•	Logs changes in the 'DeviceEvent' table.

<img width="378" alt="image" src="https://github.com/RevanthPadala7976/SmartHomeDB/assets/144652523/661932eb-3c91-4774-bf7d-5e5f54f7c540">


 

Database User Access:
Owner (admin):
•	Has full privileges, including insert, update, and delete on all tables except 'FirmwareHistory,' 'PowerConsumptionHistory,' and 'DeviceEvent.'


Conclusion:

This comprehensive database design ensures effective data management, tracking device events, power consumption analysis, and facilitates maintenance and firmware update tracking. The implemented views and stored procedures enhance the accessibility and usability of data for various analytical purposes. The triggers ensure real-time updates and logging of significant events in the database.

