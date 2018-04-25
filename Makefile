# Created by: Yanhui Shen <shen.elf@gmail.com>
# $FreeBSD: head/ports-mgmt/pkg-rmleaf/Makefile 374209 2014-12-07 14:53:39Z feld $

PORTNAME=	pkg-rmleaf
PORTVERSION=	0.4
CATEGORIES=	ports-mgmt
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	shen.elf@gmail.com
COMMENT=	Remove leaf packages

LICENSE=	BSD2CLAUSE

NO_BUILD=	yes
WRKSRC=		${WRKDIR}

PLIST_FILES=	sbin/pkg-rmleaf

do-extract:
	${MKDIR} ${WRKSRC}
	${CP} ${FILESDIR}/pkg-rmleaf ${WRKSRC}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pkg-rmleaf \
		${STAGEDIR}${PREFIX}/sbin/pkg-rmleaf

.include <bsd.port.mk>
