/* This file contains definitions for use by the Hesiod name service and
 * applications.
 *
 * For copying and distribution information, see the file <mit-copyright.h>.
 *
 * Original version by Steve Dyer, IBM/Project Athena.
 *
 *	$Author: treese $
 *	$Athena: hesiod.h,v 1.2 88/06/05 19:51:32 treese Locked $
 *	$Header: /afs/dev.mit.edu/source/repository/athena/lib/hesiod/hesiod.h.sed,v 1.3 1988-08-07 21:52:39 treese Exp $
 *	$Source: /afs/dev.mit.edu/source/repository/athena/lib/hesiod/hesiod.h.sed,v $
 *	$Log: not supported by cvs2svn $
 * Revision 1.2  88/06/05  19:51:32  treese
 * Cleaned up for public distribution
 * 
 */

/* Configuration information. */

#define HESIOD_CONF	"/etc/hesiod.conf"	/* Configuration file. */
#define DEF_RHS		".Athena.MIT.EDU"	/* Defaults if HESIOD_CONF */
#define DEF_LHS		".ns"			/*    file is not present. */

/* Error codes. */

#define	HES_ER_UNINIT	-1	/* uninitialized */
#define	HES_ER_OK	0	/* no error */
#define	HES_ER_NOTFOUND	1	/* Hesiod name not found by server */
#define HES_ER_CONFIG	2	/* local problem (no config file?) */
#define HES_ER_NET	3	/* network problem */

/* Declaration of routines */

char *hes_to_bind();
char **hes_resolve();

/* For use in getting post-office information. */

struct hes_postoffice {
	char	*po_type;
	char	*po_host;
	char	*po_name;
};

struct hes_postoffice *hes_getmailhost();
