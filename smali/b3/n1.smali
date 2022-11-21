.class public final Lb3/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field public static b:Lb3/n1;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lb3/n1;
    .locals 1

    sget-object v0, Lb3/n1;->b:Lb3/n1;

    if-nez v0, :cond_0

    new-instance v0, Lb3/n1;

    invoke-direct {v0}, Lb3/n1;-><init>()V

    sput-object v0, Lb3/n1;->b:Lb3/n1;

    :cond_0
    sget-object v0, Lb3/n1;->b:Lb3/n1;

    return-object v0
.end method
