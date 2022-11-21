.class public Lr/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr/d;->i(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Application;

.field public final synthetic b:Lr/d$d;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lr/d$d;)V
    .locals 0

    iput-object p1, p0, Lr/d$b;->a:Landroid/app/Application;

    iput-object p2, p0, Lr/d$b;->b:Lr/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lr/d$b;->a:Landroid/app/Application;

    iget-object v1, p0, Lr/d$b;->b:Lr/d$d;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
