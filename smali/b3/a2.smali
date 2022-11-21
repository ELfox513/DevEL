.class public final synthetic Lb3/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lb3/b2;


# direct methods
.method public constructor <init>(Lb3/b2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/a2;->a:Lb3/b2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lb3/a2;->a:Lb3/b2;

    invoke-virtual {v0}, Lb3/b2;->a()Lr4/nn;

    return-void
.end method
