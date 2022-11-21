.class public final synthetic Landroid/app/Notification$Action$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public synthetic constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native synthetic addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic build()Landroid/app/Notification$Action;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method
