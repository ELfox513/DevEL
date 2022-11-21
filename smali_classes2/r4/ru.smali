.class public final synthetic Lr4/ru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/em0;


# static fields
.field public static final a:Lr4/em0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/ru;

    invoke-direct {v0}, Lr4/ru;-><init>()V

    sput-object v0, Lr4/ru;->a:Lr4/em0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/sv;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lr4/sv;

    goto :goto_0

    :cond_1
    new-instance v0, Lr4/sv;

    invoke-direct {v0, p1}, Lr4/sv;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
