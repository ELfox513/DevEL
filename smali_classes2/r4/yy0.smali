.class public final synthetic Lr4/yy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/cz0;

.field public final b:I

.field public final d:I


# direct methods
.method public constructor <init>(Lr4/cz0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/yy0;->a:Lr4/cz0;

    iput p2, p0, Lr4/yy0;->b:I

    iput p3, p0, Lr4/yy0;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/yy0;->a:Lr4/cz0;

    iget v1, p0, Lr4/yy0;->b:I

    iget v2, p0, Lr4/yy0;->d:I

    invoke-virtual {v0, v1, v2}, Lr4/cz0;->z(II)V

    return-void
.end method
