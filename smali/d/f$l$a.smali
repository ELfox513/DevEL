.class public Ld/f$l$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f$l;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/f$l;


# direct methods
.method public constructor <init>(Ld/f$l;)V
    .locals 0

    iput-object p1, p0, Ld/f$l$a;->a:Ld/f$l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Ld/f$l$a;->a:Ld/f$l;

    invoke-virtual {p1}, Ld/f$l;->d()V

    return-void
.end method
