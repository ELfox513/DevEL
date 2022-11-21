.class public final Lr4/tc;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/Exception;I)Lr4/tc;
    .locals 3

    new-instance v0, Lr4/tc;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lr4/tc;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static b(Ljava/io/IOException;)Lr4/tc;
    .locals 4

    new-instance v0, Lr4/tc;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lr4/tc;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static c(Ljava/lang/RuntimeException;)Lr4/tc;
    .locals 4

    new-instance v0, Lr4/tc;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lr4/tc;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method
