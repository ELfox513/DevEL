.class public final Lb3/o1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lb3/p1;


# direct methods
.method public constructor <init>(Lb3/p1;)V
    .locals 0

    iput-object p1, p0, Lb3/o1;->a:Lb3/p1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lb3/o1;->a:Lb3/p1;

    invoke-static {v0, p1, p2}, Lb3/p1;->d(Lb3/p1;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
