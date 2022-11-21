.class public final Lb5/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/ce;


# static fields
.field public static final a:Lb5/r6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/r6<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lb5/r6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/r6<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lb5/r6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/r6<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lb5/r6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/r6<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lb5/r6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/r6<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lb5/o6;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lb5/h6;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lb5/o6;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.id.lifecycle.app_in_background_parameter"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lb5/o6;->c(Ljava/lang/String;J)Lb5/r6;

    move-result-object v1

    sput-object v1, Lb5/de;->a:Lb5/r6;

    const-string v1, "measurement.lifecycle.app_backgrounded_engagement"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lb5/o6;->e(Ljava/lang/String;Z)Lb5/r6;

    move-result-object v1

    sput-object v1, Lb5/de;->b:Lb5/r6;

    const-string v1, "measurement.lifecycle.app_backgrounded_tracking"

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5}, Lb5/o6;->e(Ljava/lang/String;Z)Lb5/r6;

    move-result-object v1

    sput-object v1, Lb5/de;->c:Lb5/r6;

    const-string v1, "measurement.lifecycle.app_in_background_parameter"

    invoke-virtual {v0, v1, v4}, Lb5/o6;->e(Ljava/lang/String;Z)Lb5/r6;

    move-result-object v1

    sput-object v1, Lb5/de;->d:Lb5/r6;

    const-string v1, "measurement.id.lifecycle.app_backgrounded_tracking"

    invoke-virtual {v0, v1, v2, v3}, Lb5/o6;->c(Ljava/lang/String;J)Lb5/r6;

    move-result-object v0

    sput-object v0, Lb5/de;->e:Lb5/r6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lb5/de;->d:Lb5/r6;

    invoke-virtual {v0}, Lb5/r6;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zza()Z
    .locals 1

    sget-object v0, Lb5/de;->b:Lb5/r6;

    invoke-virtual {v0}, Lb5/r6;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
