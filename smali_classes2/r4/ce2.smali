.class public final synthetic Lr4/ce2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ge2;


# static fields
.field public static final a:Lr4/ge2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/ce2;

    invoke-direct {v0}, Lr4/ce2;-><init>()V

    sput-object v0, Lr4/ce2;->a:Lr4/ge2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "native_version"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
