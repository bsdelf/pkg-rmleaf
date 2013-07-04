# New ports collection makefile for:	pkg-rmleaf
# Date created:		05.06.2013
# Whom:			Yanhui Shen <shen.elf@gmail.com>

PORTNAME=	pkg-rmleaf
PORTVERSION=	0.1
CATEGORIES=	ports-mgmt
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	shen.elf@gmail.com
COMMENT=	Remove leaf packages
LICENSE=    BSD

NO_BUILD=	yes
RUN_DEPENDS=	${LOCALBASE}/sbin/pkg:${PORTSDIR}/ports-mgmt/pkg

WRKSRC=		${WRKDIR}

PLIST_FILES=	sbin/pkg-rmleaf

do-extract:
	${MKDIR} ${WRKSRC}
	${CP} ${FILESDIR}/pkg-rmleaf ${WRKSRC}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pkg-rmleaf ${PREFIX}/sbin/pkg-rmleaf

.include <bsd.port.mk>
