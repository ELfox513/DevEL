.class public final synthetic Lb3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lb3/y;


# direct methods
.method public constructor <init>(Lb3/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/j;->a:Lb3/y;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lb3/j;->a:Lb3/y;

    invoke-virtual {v0}, Lb3/y;->k()V

    return-void
.end method
