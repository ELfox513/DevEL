.class public final synthetic Lr4/ep0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/gp0;

.field public final b:I


# direct methods
.method public constructor <init>(Lr4/gp0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ep0;->a:Lr4/gp0;

    iput p2, p0, Lr4/ep0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/ep0;->a:Lr4/gp0;

    iget v1, p0, Lr4/ep0;->b:I

    invoke-virtual {v0, v1}, Lr4/gp0;->I(I)V

    return-void
.end method
