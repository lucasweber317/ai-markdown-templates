Update timing

DataSync Pro version 2.4.3 is available on March 8, 2027 via the customer portal.

Automatic updates will begin for staging environments on March 8, 2027, and for production environments on March 15, 2027.

Fixed issues & improvements

Fixed a bug introduced in version 2.4.0 where notification preference changes were not saved for users with custom role permissions. This affected approximately 15% of users who have custom roles configured beyond the standard Admin, Editor, and Viewer roles.

Resolved export timeouts that occurred when exporting more than 50,000 records to CSV. Exports now support up to 5 minutes of processing time with chunked processing for large datasets, ensuring complete exports for Enterprise customers with extensive data.

Improved dashboard performance through database query optimization, reducing load times by approximately 25%.

Fixed a memory leak affecting customers with continuous sync enabled for extended periods (24+ hours).

Note

Versions 2.4.1 and 2.4.2 were not released due to issues discovered during testing. Version 2.4.3 is the recommended update for all customers using version 2.4.0.
