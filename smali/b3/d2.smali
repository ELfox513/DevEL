.class public final Lb3/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/o00;


# instance fields
.field public final synthetic a:Lr4/q00;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lb3/k2;Lr4/q00;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p2, p0, Lb3/d2;->a:Lr4/q00;

    iput-object p3, p0, Lb3/d2;->b:Landroid/content/Context;

    iput-object p4, p0, Lb3/d2;->c:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    iget-object v0, p0, Lb3/d2;->a:Lr4/q00;

    invoke-virtual {v0}, Lr4/q00;->c()Lo/e;

    move-result-object v0

    new-instance v1, Lo/c$a;

    invoke-direct {v1, v0}, Lo/c$a;-><init>(Lo/e;)V

    invoke-virtual {v1}, Lo/c$a;->a()Lo/c;

    move-result-object v0

    iget-object v1, v0, Lo/c;->a:Landroid/content/Intent;

    iget-object v2, p0, Lb3/d2;->b:Landroid/content/Context;

    invoke-static {v2}, Lr4/js3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lb3/d2;->b:Landroid/content/Context;

    iget-object v2, p0, Lb3/d2;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lo/c;->a(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lb3/d2;->a:Lr4/q00;

    iget-object v1, p0, Lb3/d2;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lr4/q00;->b(Landroid/app/Activity;)V

    return-void
.end method
