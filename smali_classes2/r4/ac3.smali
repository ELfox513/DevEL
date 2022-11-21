.class public final Lr4/ac3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Lr4/fi3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Lr4/fi3;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/zb3;

    invoke-direct {v0}, Lr4/zb3;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    sput-object v0, Lr4/ac3;->a:Ljava/lang/String;

    invoke-static {}, Lr4/fi3;->D()Lr4/fi3;

    move-result-object v0

    sput-object v0, Lr4/ac3;->b:Lr4/fi3;

    invoke-static {}, Lr4/fi3;->D()Lr4/fi3;

    move-result-object v0

    sput-object v0, Lr4/ac3;->c:Lr4/fi3;

    :try_start_0
    new-instance v0, Lr4/cc3;

    invoke-direct {v0}, Lr4/cc3;-><init>()V

    invoke-static {v0}, Lr4/ja3;->e(Lr4/ba3;)V

    invoke-static {}, Lr4/vb3;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lr4/zb3;

    invoke-direct {v0}, Lr4/zb3;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/ja3;->c(Lr4/q93;Z)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
