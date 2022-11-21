.class public final synthetic Lr4/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/y2;

.field public final b:I


# direct methods
.method public constructor <init>(Lr4/y2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/x2;->a:Lr4/y2;

    iput p2, p0, Lr4/x2;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/x2;->a:Lr4/y2;

    iget v1, p0, Lr4/x2;->b:I

    iget-object v0, v0, Lr4/y2;->b:Lr4/a3;

    invoke-static {v0, v1}, Lr4/a3;->d(Lr4/a3;I)V

    return-void
.end method
