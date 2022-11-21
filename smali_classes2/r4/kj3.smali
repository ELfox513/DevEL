.class public final Lr4/kj3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lr4/sj3<",
        "TT_ENGINE;>;T_ENGINE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Z

.field public static final e:Lr4/kj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/kj3<",
            "Lr4/lj3;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lr4/kj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/kj3<",
            "Lr4/pj3;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lr4/kj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/kj3<",
            "Lr4/rj3;",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lr4/kj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/kj3<",
            "Lr4/qj3;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lr4/kj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/kj3<",
            "Lr4/mj3;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lr4/kj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/kj3<",
            "Lr4/oj3;",
            "Ljava/security/KeyPairGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lr4/kj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/kj3<",
            "Lr4/nj3;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lr4/sj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_WRAPPER;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lr4/kj3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lr4/kj3;->b:Ljava/util/logging/Logger;

    invoke-static {}, Lr4/vb3;->a()Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "AndroidOpenSSL"

    const-string v3, "GmsCore_OpenSSL"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v4

    aput-object v2, v0, v5

    const-string v2, "Conscrypt"

    aput-object v2, v0, v1

    invoke-static {v0}, Lr4/kj3;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lr4/kj3;->c:Ljava/util/List;

    sput-boolean v4, Lr4/kj3;->d:Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lr4/ck3;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    aput-object v3, v0, v4

    aput-object v2, v0, v5

    invoke-static {v0}, Lr4/kj3;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lr4/kj3;->c:Ljava/util/List;

    sput-boolean v5, Lr4/kj3;->d:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lr4/kj3;->c:Ljava/util/List;

    sput-boolean v5, Lr4/kj3;->d:Z

    :goto_0
    new-instance v0, Lr4/kj3;

    new-instance v1, Lr4/lj3;

    invoke-direct {v1}, Lr4/lj3;-><init>()V

    invoke-direct {v0, v1}, Lr4/kj3;-><init>(Lr4/sj3;)V

    sput-object v0, Lr4/kj3;->e:Lr4/kj3;

    new-instance v0, Lr4/kj3;

    new-instance v1, Lr4/pj3;

    invoke-direct {v1}, Lr4/pj3;-><init>()V

    invoke-direct {v0, v1}, Lr4/kj3;-><init>(Lr4/sj3;)V

    sput-object v0, Lr4/kj3;->f:Lr4/kj3;

    new-instance v0, Lr4/kj3;

    new-instance v1, Lr4/rj3;

    invoke-direct {v1}, Lr4/rj3;-><init>()V

    invoke-direct {v0, v1}, Lr4/kj3;-><init>(Lr4/sj3;)V

    sput-object v0, Lr4/kj3;->g:Lr4/kj3;

    new-instance v0, Lr4/kj3;

    new-instance v1, Lr4/qj3;

    invoke-direct {v1}, Lr4/qj3;-><init>()V

    invoke-direct {v0, v1}, Lr4/kj3;-><init>(Lr4/sj3;)V

    sput-object v0, Lr4/kj3;->h:Lr4/kj3;

    new-instance v0, Lr4/kj3;

    new-instance v1, Lr4/mj3;

    invoke-direct {v1}, Lr4/mj3;-><init>()V

    invoke-direct {v0, v1}, Lr4/kj3;-><init>(Lr4/sj3;)V

    sput-object v0, Lr4/kj3;->i:Lr4/kj3;

    new-instance v0, Lr4/kj3;

    new-instance v1, Lr4/oj3;

    invoke-direct {v1}, Lr4/oj3;-><init>()V

    invoke-direct {v0, v1}, Lr4/kj3;-><init>(Lr4/sj3;)V

    sput-object v0, Lr4/kj3;->j:Lr4/kj3;

    new-instance v0, Lr4/kj3;

    new-instance v1, Lr4/nj3;

    invoke-direct {v1}, Lr4/nj3;-><init>()V

    invoke-direct {v0, v1}, Lr4/kj3;-><init>(Lr4/sj3;)V

    sput-object v0, Lr4/kj3;->k:Lr4/kj3;

    return-void
.end method

.method public constructor <init>(Lr4/sj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/kj3;->a:Lr4/sj3;

    return-void
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v5, Lr4/kj3;->b:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v2

    const-string v4, "Provider %s not available"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.google.crypto.tink.subtle.EngineFactory"

    const-string v8, "toProviderList"

    invoke-virtual {v5, v6, v7, v8, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT_ENGINE;"
        }
    .end annotation

    sget-object v0, Lr4/kj3;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    :try_start_0
    iget-object v4, p0, Lr4/kj3;->a:Lr4/sj3;

    invoke-interface {v4, p1, v3}, Lr4/sj3;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_1
    sget-boolean v0, Lr4/kj3;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/kj3;->a:Lr4/sj3;

    invoke-interface {v0, p1, v1}, Lr4/sj3;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "No good Provider found."

    invoke-direct {p1, v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
