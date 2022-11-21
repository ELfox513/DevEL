.class public final Lm3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lt3/d;

.field public static final b:[Lt3/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lt3/d;

    const-string v1, "app_set_id"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lt3/d;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lm3/h;->a:Lt3/d;

    const/4 v1, 0x1

    new-array v1, v1, [Lt3/d;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lm3/h;->b:[Lt3/d;

    return-void
.end method
