.class public final synthetic Lr4/wf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/dg2;


# static fields
.field public static final a:Lr4/dg2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/wf2;

    invoke-direct {v0}, Lr4/wf2;-><init>()V

    sput-object v0, Lr4/wf2;->a:Lr4/dg2;

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

    const-string v0, "sdk_prefetch"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
