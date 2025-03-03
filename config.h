/*

  ----------------------------------------------------
  httpry - HTTP logging and information retrieval tool
  ----------------------------------------------------

  Copyright (c) 2005-2014 Jason Bittel <jason.bittel@gmail.com>
  Licensed under GPLv2. For further information, see COPYING file.

*/

#ifndef _HAVE_CONFIG_H
#define _HAVE_CONFIG_H

#define PROG_NAME "packetstat"
#define PROG_VER "1.0.0"

/* Default packet capture filter; must be a standard libpcap style filter
   *** Can be overridden */
#define DEFAULT_CAPFILTER "tcp"

/* Default output format string; see doc/format-string for more information
   *** Can be overridden with -f */
#define DEFAULT_FORMAT "timestamp,source-ip,dest-ip,direction,method,host,request-uri,http-version,status-code,reason-phrase"

/* Default format string for rate statistics mode; should never change! */
#define RATE_FORMAT "host"

/* Default request methods to process; see doc/method-string for more information
   *** Can be overridden with -m */
#define DEFAULT_METHODS "get,post,put,head,options,delete,trace,connect,patch"

/* Default threshold for displaying rps in rate statistics mode
   *** Can be overridden with -l */
#define DEFAULT_RATE_THRESHOLD 1

/* Default display interval for rate statistics in ms
   *** Can be overridden with -t */
#define DEFAULT_RATE_INTERVAL 5

/* Default location to store the PID file when running in daemon mode
   *** Can be overridden with -P */
#define PID_FILENAME "/var/run/packetstat.pid"

/* Where to send unnecessary output */
#define NULL_FILE "/dev/null"

/* String to print when an output field has no associated data */
#define EMPTY_FIELD "-"

/* Delimiter that separates output fields */
#define FIELD_DELIM "\t"

/* HTTP specific constant; should never change! */
#define HTTP_STRING "HTTP/"

#define MAX_TIME_LEN 32
#define PORTSTRLEN 6

/* The MAX bucket size of timestamp statistic */
#define MAX_BUCKET_SIZE 12000
/* The MIN buckt slot in miliiseconds  */
#define MIN_BUCKET_SLOT 10

#endif /* ! _HAVE_CONFIG_H */
