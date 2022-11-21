.class public final synthetic Lb3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lb3/y;

.field public final b:Lr4/i83;


# direct methods
.method public constructor <init>(Lb3/y;Lr4/i83;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/k;->a:Lb3/y;

    iput-object p2, p0, Lb3/k;->b:Lr4/i83;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lb3/k;->a:Lb3/y;

    iget-object v1, p0, Lb3/k;->b:Lr4/i83;

    invoke-virtual {v0, v1}, Lb3/y;->i(Lr4/i83;)V

    return-void
.end method
