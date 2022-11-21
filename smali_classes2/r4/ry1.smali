.class public final synthetic Lr4/ry1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/az1;


# direct methods
.method public constructor <init>(Lr4/az1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ry1;->a:Lr4/az1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/ry1;->a:Lr4/az1;

    invoke-virtual {v0}, Lr4/az1;->i()V

    return-void
.end method
