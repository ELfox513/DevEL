.class public Lr4/lk;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public final a:Lr4/ik;


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lr4/ik;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lr4/lk;->a:Lr4/ik;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lr4/ik;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lr4/lk;->a:Lr4/ik;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lr4/ik;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lr4/lk;->a:Lr4/ik;

    return-void
.end method
