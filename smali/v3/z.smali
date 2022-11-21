.class public final Lv3/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lv3/c0;


# direct methods
.method public constructor <init>(Lv3/c0;I)V
    .locals 0

    iput-object p1, p0, Lv3/z;->b:Lv3/c0;

    iput p2, p0, Lv3/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lv3/z;->b:Lv3/c0;

    iget v1, p0, Lv3/z;->a:I

    invoke-static {v0, v1}, Lv3/c0;->M(Lv3/c0;I)V

    return-void
.end method
