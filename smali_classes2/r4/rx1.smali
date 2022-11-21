.class public final Lr4/rx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ga1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/ik0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/ik0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/rx1;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/rx1;->b:Lr4/ik0;

    return-void
.end method


# virtual methods
.method public final A0(Lr4/bp2;)V
    .locals 3

    iget-object v0, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v0, v0, Lr4/ap2;->b:Lr4/so2;

    iget-object v0, v0, Lr4/so2;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/rx1;->b:Lr4/ik0;

    iget-object v1, p0, Lr4/rx1;->a:Landroid/content/Context;

    iget-object v2, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object v2, v2, Lr4/yo2;->a:Lr4/hp2;

    iget-object v2, v2, Lr4/hp2;->d:Lr4/tt;

    invoke-virtual {v0, v1, v2}, Lr4/ik0;->i(Landroid/content/Context;Lr4/tt;)V

    iget-object v0, p0, Lr4/rx1;->b:Lr4/ik0;

    iget-object v1, p0, Lr4/rx1;->a:Landroid/content/Context;

    iget-object p1, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object p1, p1, Lr4/ap2;->b:Lr4/so2;

    iget-object p1, p1, Lr4/so2;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lr4/ik0;->u(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c0(Lr4/og0;)V
    .locals 0

    return-void
.end method
