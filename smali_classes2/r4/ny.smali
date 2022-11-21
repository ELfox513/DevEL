.class public final synthetic Lr4/ny;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/oy;


# direct methods
.method public constructor <init>(Lr4/oy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ny;->a:Lr4/oy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/ny;->a:Lr4/oy;

    invoke-virtual {v0}, Lr4/oy;->a()V

    return-void
.end method
