.class public final Lb3/z;
.super Lr4/xw;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lb3/c0;


# direct methods
.method public constructor <init>(Lb3/c0;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lb3/z;->b:Lb3/c0;

    iput-object p2, p0, Lb3/z;->a:Landroid/content/Context;

    invoke-direct {p0}, Lr4/xw;-><init>()V

    return-void
.end method


# virtual methods
.method public final q0(Lr4/lt;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb3/z;->b:Lb3/c0;

    iget-object v1, p0, Lb3/z;->a:Landroid/content/Context;

    iget-object p1, p1, Lr4/lt;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, v2}, Lb3/c0;->n(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method
