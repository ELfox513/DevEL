.class public final synthetic Lr4/km;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/om;


# direct methods
.method public constructor <init>(Lr4/om;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/km;->a:Lr4/om;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/km;->a:Lr4/om;

    invoke-virtual {v0}, Lr4/om;->g()V

    return-void
.end method
