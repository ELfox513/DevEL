.class public final Lb3/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ul0;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb3/k2;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lb3/f2;->a:Landroid/content/Context;

    iput-object p3, p0, Lb3/f2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v0, p0, Lb3/f2;->a:Landroid/content/Context;

    iget-object v1, p0, Lb3/f2;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lb3/k2;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
