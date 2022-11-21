.class public final Lr4/la3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Lr4/fi3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Lr4/fi3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:Lr4/fi3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/ra3;

    invoke-direct {v0}, Lr4/ra3;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    sput-object v0, Lr4/la3;->a:Ljava/lang/String;

    new-instance v0, Lr4/bb3;

    invoke-direct {v0}, Lr4/bb3;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    sput-object v0, Lr4/la3;->b:Ljava/lang/String;

    new-instance v0, Lr4/eb3;

    invoke-direct {v0}, Lr4/eb3;-><init>()V

    new-instance v0, Lr4/ya3;

    invoke-direct {v0}, Lr4/ya3;-><init>()V

    new-instance v0, Lr4/kb3;

    invoke-direct {v0}, Lr4/kb3;-><init>()V

    new-instance v0, Lr4/ob3;

    invoke-direct {v0}, Lr4/ob3;-><init>()V

    new-instance v0, Lr4/hb3;

    invoke-direct {v0}, Lr4/hb3;-><init>()V

    new-instance v0, Lr4/rb3;

    invoke-direct {v0}, Lr4/rb3;-><init>()V

    invoke-static {}, Lr4/fi3;->D()Lr4/fi3;

    move-result-object v0

    sput-object v0, Lr4/la3;->c:Lr4/fi3;

    sput-object v0, Lr4/la3;->d:Lr4/fi3;

    sput-object v0, Lr4/la3;->e:Lr4/fi3;

    :try_start_0
    invoke-static {}, Lr4/la3;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 2

    new-instance v0, Lr4/oa3;

    invoke-direct {v0}, Lr4/oa3;-><init>()V

    invoke-static {v0}, Lr4/ja3;->e(Lr4/ba3;)V

    invoke-static {}, Lr4/xc3;->a()V

    new-instance v0, Lr4/ra3;

    invoke-direct {v0}, Lr4/ra3;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/ja3;->c(Lr4/q93;Z)V

    new-instance v0, Lr4/bb3;

    invoke-direct {v0}, Lr4/bb3;-><init>()V

    invoke-static {v0, v1}, Lr4/ja3;->c(Lr4/q93;Z)V

    invoke-static {}, Lr4/vb3;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lr4/ya3;

    invoke-direct {v0}, Lr4/ya3;-><init>()V

    invoke-static {v0, v1}, Lr4/ja3;->c(Lr4/q93;Z)V

    invoke-static {v1}, Lr4/eb3;->k(Z)V

    new-instance v0, Lr4/hb3;

    invoke-direct {v0}, Lr4/hb3;-><init>()V

    invoke-static {v0, v1}, Lr4/ja3;->c(Lr4/q93;Z)V

    new-instance v0, Lr4/kb3;

    invoke-direct {v0}, Lr4/kb3;-><init>()V

    invoke-static {v0, v1}, Lr4/ja3;->c(Lr4/q93;Z)V

    new-instance v0, Lr4/ob3;

    invoke-direct {v0}, Lr4/ob3;-><init>()V

    invoke-static {v0, v1}, Lr4/ja3;->c(Lr4/q93;Z)V

    new-instance v0, Lr4/rb3;

    invoke-direct {v0}, Lr4/rb3;-><init>()V

    invoke-static {v0, v1}, Lr4/ja3;->c(Lr4/q93;Z)V

    return-void
.end method
