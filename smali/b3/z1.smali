.class public final synthetic Lb3/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lb3/b2;

.field public final b:Landroid/content/Context;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb3/b2;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/z1;->a:Lb3/b2;

    iput-object p2, p0, Lb3/z1;->b:Landroid/content/Context;

    const-string p1, "admob"

    iput-object p1, p0, Lb3/z1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lb3/z1;->a:Lb3/b2;

    iget-object v1, p0, Lb3/z1;->b:Landroid/content/Context;

    iget-object v2, p0, Lb3/z1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lb3/b2;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
