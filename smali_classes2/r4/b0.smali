.class public final Lr4/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/k0;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lr4/l0;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lr4/b0;->a:Landroid/app/Activity;

    iput-object p3, p0, Lr4/b0;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2

    iget-object v0, p0, Lr4/b0;->a:Landroid/app/Activity;

    iget-object v1, p0, Lr4/b0;->b:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
