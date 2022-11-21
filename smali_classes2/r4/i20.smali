.class public final synthetic Lr4/i20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ab;


# instance fields
.field public final a:Lr4/d51;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Lr4/d51;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/i20;->a:Lr4/d51;

    iput p2, p0, Lr4/i20;->b:I

    iput-wide p3, p0, Lr4/i20;->c:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lr4/i20;->a:Lr4/d51;

    iget v1, p0, Lr4/i20;->b:I

    iget-wide v2, p0, Lr4/i20;->c:J

    check-cast p1, Lr4/f61;

    invoke-interface {p1, v0, v1, v2, v3}, Lr4/f61;->i(Lr4/d51;IJ)V

    return-void
.end method
