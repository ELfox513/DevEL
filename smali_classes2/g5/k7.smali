.class public final synthetic Lg5/k7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/l7;

.field public final synthetic b:I

.field public final synthetic d:Ljava/lang/Exception;

.field public final synthetic k:[B

.field public final synthetic p:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lg5/l7;ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/k7;->a:Lg5/l7;

    iput p2, p0, Lg5/k7;->b:I

    iput-object p3, p0, Lg5/k7;->d:Ljava/lang/Exception;

    iput-object p4, p0, Lg5/k7;->k:[B

    iput-object p5, p0, Lg5/k7;->p:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lg5/k7;->a:Lg5/l7;

    iget v1, p0, Lg5/k7;->b:I

    iget-object v2, p0, Lg5/k7;->d:Ljava/lang/Exception;

    iget-object v3, p0, Lg5/k7;->k:[B

    iget-object v4, p0, Lg5/k7;->p:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lg5/l7;->a(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
