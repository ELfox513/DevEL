.class public final Lr4/lm;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/om;


# direct methods
.method public constructor <init>(Lr4/om;)V
    .locals 0

    iput-object p1, p0, Lr4/lm;->a:Lr4/om;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lr4/lm;->a:Lr4/om;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lr4/om;->c(Lr4/om;I)V

    return-void
.end method
