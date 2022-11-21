.class public Lr4/s;
.super Lr4/r;
.source "SourceFile"


# static fields
.field public static final I:Ljava/lang/Object;

.field public static final J:Ljava/lang/String; = "s"

.field public static K:Z = false

.field public static L:J

.field public static M:Lr4/x;


# instance fields
.field public final F:Z

.field public final G:Ljava/lang/String;

.field public H:Lr4/c1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr4/s;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/r;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lr4/s;->G:Ljava/lang/String;

    iput-boolean p3, p0, Lr4/s;->F:Z

    return-void
.end method

.method public static declared-synchronized o(Landroid/content/Context;Z)V
    .locals 5

    const-class v0, Lr4/s;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lr4/s;->K:Z

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sput-wide v1, Lr4/s;->L:J

    invoke-static {p0, p1}, Lr4/s;->p(Landroid/content/Context;Z)Lr4/v0;

    move-result-object p1

    sput-object p1, Lr4/r;->E:Lr4/v0;

    sget-object p1, Lr4/rz;->W1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lr4/x;->b(Landroid/content/Context;)Lr4/x;

    move-result-object p0

    sput-object p0, Lr4/s;->M:Lr4/x;

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lr4/s;->K:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static p(Landroid/content/Context;Z)Lr4/v0;
    .locals 8

    sget-object v0, Lr4/r;->E:Lr4/v0;

    if-nez v0, :cond_4

    sget-object v0, Lr4/s;->I:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr4/r;->E:Lr4/v0;

    if-nez v1, :cond_3

    const-string v1, "NYpdto3gBV8HiZtFXi3NN2dSfPyfe2T+8tUnAUjRH8A="

    const-string v2, "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"

    invoke-static {p0, v1, v2, p1}, Lr4/v0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lr4/v0;

    move-result-object p0

    invoke-virtual {p0}, Lr4/v0;->d()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    :try_start_1
    sget-object v1, Lr4/rz;->P1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    const-string v1, "wC9I8kYd+RKAHfQkBEAJYQw7avQUH+U9s6BQ/SJiEcKjDl2sT+FDEb6J3VYVY+ui"

    const-string v2, "FSkZmgTbP/gL1jHU7M+TcfgVpePk57vWMdHk6knGCa4="

    new-array v3, p1, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v2, v3}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    :catch_0
    :cond_0
    const-string v1, "NSYe0Ak7CUXd9zFZA3bczJ8pTgBK/kfUu9ICpHR+lQrTNc8+V7Owo49e2WIp0407"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, p1

    const-string v4, "Ux7t0A/7z2bV/IDvLZJgV4tTxr0Vvc1KngWKlG2Szwg="

    invoke-virtual {p0, v1, v4, v3}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "Cm/m2hUfCdldkdMMT3yEm1sAGuFpKVfLQblDoR20XcK7ttTDkHIz3fwaKTv7az9S"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, p1

    const-string v4, "aEm/NgN//tNFhysboe/lIhu1ib9P4g8tTm8w79YCsSs="

    invoke-virtual {p0, v1, v4, v3}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "6LxD9DBfXSlooSx7/LozL06rdHrjyh7Q8PNFejLJXxiRhvgA5vOTtEhIRp3pKXIi"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, p1

    const-string v4, "yXdkchwXd7KBwiPBiUydLTG3hsBC8U5EW7urXPkQrKc="

    invoke-virtual {p0, v1, v4, v3}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "BEk7ZnZgUEtCcnEVmnqrsudDaU91B7wv3jOIcYFOdixfCZNd4CeUtXw9CNec1bEk"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, p1

    const-string v4, "yo4aeX8SQAYiyb+wCfW6Y7Ut6lHDx7k9wp/IaZ/McDY="

    invoke-virtual {p0, v1, v4, v3}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "haIuUvChZNHM9MeHv9WrHlihODeJsTzWhRoU3l/WedulIO/DPlHeipCgsdOhWEK6"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, p1

    const-string v4, "2q9SJ42xLZKaCbpMEBENFcJEqDDES1vvcaask6iD3co="

    invoke-virtual {p0, v1, v4, v3}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "0nCS1/lIiwmVLmY4a37W/6SChW3s76Q3PykiLxRk0eA7B+gs2O43l0EwWtwdYppM"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, p1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-string v6, "NOQ7v89FdlqbWITe5fQxaJU2MeOCrxMPjMVtpwyCEdc="

    invoke-virtual {p0, v1, v6, v4}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "TDjQ/ClZ1A6U11LRle5Q8IpNZYzzk0FLHirJ3MQW6+Xmi/90o6gFxPcIONwzxlWm"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, p1

    const-string v6, "ZlhR2acRJ5DFhes+PG5pnG7AissVCA1YeE0si8KUOuk="

    invoke-virtual {p0, v1, v6, v4}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "pECbn1i7ArZz8HseR71ZVkvFfTp84DNv2haWC1WmGQudMO74UcIxEa2NyELtzZhK"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, p1

    const-string v6, "LbaQh8VAFWEQeupBiMdSh8EgMse5yKT8p6jkCYTG+aQ="

    invoke-virtual {p0, v1, v6, v4}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "6XqKWQ93+VsENz1XMuSK8tgooVS0F/+xtezkhSGK2kwZU9gOCstoEHJ4LdRwy+D0"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Landroid/view/MotionEvent;

    aput-object v6, v4, p1

    const-class v6, Landroid/util/DisplayMetrics;

    aput-object v6, v4, v2

    const-string v6, "k9LiT4122PpqzUH6coaRvTZE6l9CWOGxr21WpJpkxjE="

    invoke-virtual {p0, v1, v6, v4}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "lJSjzU0WHYWPVV9sbEMt+ajOnNQwNtdM0PEq4BwIHEoSxWMr7EQ/IWk1GxHpKsqd"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Landroid/view/MotionEvent;

    aput-object v6, v4, p1

    const-class v6, Landroid/util/DisplayMetrics;

    aput-object v6, v4, v2

    const-string v6, "fOkIRsWNRFrLLiTxAAtymkQwvThROsAenMGWOswUGPc="

    invoke-virtual {p0, v1, v6, v4}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "bwYfemyqKvs+5mX5RaQoUxmdyIG97sQWktW0fw649v7l/u+oM9fVxJ1I47AdFZo9"

    const-string v4, "ue4Q/YADEXoviiBHZurTF9IPPlfQKRVJdzRZ56oggWM="

    new-array v6, p1, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v4, v6}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "kgLg33QaU762V6pmSw9NTYQDT3UN+SfZqKWL+LtHgczBAmljOlYdBxhmK655CLWm"

    const-string v4, "WLzuG2U+Kkbg0oKQlrLQGRQCiSGGQTHe1FZJKw3vRH0="

    new-array v6, p1, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v4, v6}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "FIES3RTkQwHbrKX6yNHRLvjdTy/vAwaHt4NSjNSY8AdC8m3WKKtOY2UmKZKAKB0T"

    const-string v4, "2LDOSJy2Fx9VBMC+bm+0OJly9nmnJoeXDwyJmbeZyYc="

    new-array v6, p1, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v4, v6}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "BZSpo1ki7Qq4VpNbKNY5xp3ObP5b46iKtLhMqj95i84Sl1pKZG1hW1hXSXh30EEu"

    const-string v4, "LLuZlwuRYspGUGo7OZU51ciMYYFQ89K2r1TLDzvNq9k="

    new-array v6, p1, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v4, v6}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "A1tPgHG2ugzZJCs1M+dp+hmS1POsS+eh/W2v7YCpLDG/34A+E/oOE4ZeCFsAYJwW"

    const-string v4, "qStL+/rRmChGKiFwdmBpG5d//S+c8NqJKVwR4OiL/ms="

    new-array v6, p1, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v4, v6}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "DVrAFpWxz2kcLonXDVqzAxxY5qZgb6+MyY8HJZUy9HF2czdhCSx5Lbv7dDVJMgy/"

    const-string v4, "AdToINYaWmfqYE6WezllyxILgCbRf0l/sf/vZralbBA="

    new-array v6, p1, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v4, v6}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "NK1iwlHEHCICBCLEvTy0TnuhgEeSXovnPs9zKPvVW8trSfaaB+/inefY+5AxSSUI"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, p1

    aput-object v5, v6, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    const-string v7, "/qulcnd5BAOc2NixUFmrPgx+DAD1V/hpoK4nowHOBbg="

    invoke-virtual {p0, v1, v7, v6}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "FW/4CvJE7gSaOIcNy9aPqAkZHcIOptuimuYgHtkFyrZcR+XexyybvWr2/z62L/0t"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, [Ljava/lang/StackTraceElement;

    aput-object v7, v6, p1

    const-string v7, "gw9HX1g5D/FveKxEJmgn0Xdlo8h06mYt4u8/nHkUo04="

    invoke-virtual {p0, v1, v7, v6}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "Rh7wPiyt0Q0zAefasWAQ/36LhULiVi3U1eCO9K34euxkll+3xBb3q2iaqyDuAy33"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/view/View;

    aput-object v7, v6, p1

    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v6, v2

    aput-object v5, v6, v3

    const-string v7, "Kmv9uscZLQkY9DcwgermeDphrIGnHnQJYdRAudw6Thg="

    invoke-virtual {p0, v1, v7, v6}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "QXlICfiT7SVSRUb0DD1a74y++UqnSLMKlPOXAn9FNLrl7qN9uprYrk5dswjj/dLi"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, p1

    aput-object v5, v6, v2

    const-string v7, "yqGfvaGOT1fOScq8M0g9vywM6jvcTWdjxf27npfqtn0="

    invoke-virtual {p0, v1, v7, v6}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "h8EVC95dwYnFQkP2MhkDIC/tXo0ux4wCcOlQmWH2MzSwaPfcZ/24kCQO32wp6PV0"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v4, p1

    const-class v6, Landroid/app/Activity;

    aput-object v6, v4, v2

    aput-object v5, v4, v3

    const-string v3, "0H2C2EeQe84lGZgr+dAw2Fmmx+KWvzkBWNdP/wQOLp8="

    invoke-virtual {p0, v1, v3, v4}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "BF4UgSmqTS0MLe4qitQi/hj1jIQ+0vLIJEn32u0TtZn0VL9j15ZHt04Do4ADy833"

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p1

    const-string v4, "Yw5N4XiXXiTiwJwrJ8hW/AfPIwRQ2KMfiYKb9xu8vYQ="

    invoke-virtual {p0, v1, v4, v3}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v1, Lr4/rz;->U1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    const-string v1, "Md0NasjzX5Dv6RV9gbRrdbbQw799E9EBpEgmAwiNqi/RiG7V51y0yTZI5hLTRiUF"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, p1

    const-string v4, "4FqMwpBmkecZ5KuntXganMUU8jtWDsP5C5fiOE4sCtY="

    invoke-virtual {p0, v1, v4, v3}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    :catch_1
    :cond_1
    const-string v1, "Mx1UeFqV1fjeaaqnMs31Cpnz92KBTGXH/Fg2ftteXVEThFuI1yrtq0+LdsZyqokl"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, p1

    const-string v4, "Yj2yffKjPUt0Mx1uRMPIz4KPVLEfX/KYQGpvpNjX0eY="

    invoke-virtual {p0, v1, v4, v3}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_2

    sget-object v1, Lr4/rz;->W1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_2

    :try_start_6
    const-string v1, "E20AdmxNj0iK7Vx72nHXXjWnsmv4FUkyxC/Oztwx6eZIzlENIrQYdkN17JfC0Q1q"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/net/NetworkCapabilities;

    aput-object v3, v2, p1

    const-string p1, "rY9DNDEvlJE2YV76YVSJLP4cBUy/u1xcBXUcMxb1h8o="

    invoke-virtual {p0, v1, p1, v2}, Lr4/v0;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    :catch_2
    :cond_2
    sput-object p0, Lr4/r;->E:Lr4/v0;

    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :cond_4
    :goto_0
    sget-object p0, Lr4/r;->E:Lr4/v0;

    return-object p0
.end method

.method public static q(Lr4/v0;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lr4/x0;
    .locals 3

    const-string v0, "6XqKWQ93+VsENz1XMuSK8tgooVS0F/+xtezkhSGK2kwZU9gOCstoEHJ4LdRwy+D0"

    const-string v1, "k9LiT4122PpqzUH6coaRvTZE6l9CWOGxr21WpJpkxjE="

    invoke-virtual {p0, v0, v1}, Lr4/v0;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lr4/x0;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lr4/x0;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance p1, Lr4/m0;

    invoke-direct {p1, p0}, Lr4/m0;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lr4/m0;

    invoke-direct {p0}, Lr4/m0;-><init>()V

    throw p0
.end method

.method public static final t(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lr4/r;->E:Lr4/v0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lr4/r;->E:Lr4/v0;

    invoke-virtual {v0}, Lr4/v0;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    sget-object v1, Lr4/rz;->H1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lr4/s;->J:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lr4/y0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "class methods got exception: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lr4/rz;->K1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/s;->H:Lr4/c1;

    if-nez v0, :cond_1

    sget-object v0, Lr4/r;->E:Lr4/v0;

    new-instance v1, Lr4/c1;

    iget-object v2, v0, Lr4/v0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lr4/v0;->m()Lr4/o0;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lr4/c1;-><init>(Landroid/content/Context;Lr4/o0;)V

    iput-object v1, p0, Lr4/s;->H:Lr4/c1;

    :cond_1
    iget-object v0, p0, Lr4/s;->H:Lr4/c1;

    invoke-virtual {v0, p1}, Lr4/c1;->a(Landroid/view/View;)V

    return-void
.end method

.method public final h(Landroid/content/Context;Lr4/sa4;)Lr4/za4;
    .locals 2

    invoke-static {}, Lr4/pb4;->z0()Lr4/za4;

    move-result-object p2

    iget-object v0, p0, Lr4/s;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/s;->G:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lr4/za4;->g0(Ljava/lang/String;)Lr4/za4;

    :cond_0
    iget-boolean v0, p0, Lr4/s;->F:Z

    invoke-static {p1, v0}, Lr4/s;->p(Landroid/content/Context;Z)Lr4/v0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/v0;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lr4/s;->r(Lr4/v0;Landroid/content/Context;Lr4/za4;Lr4/sa4;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lr4/s;->t(Ljava/util/List;)V

    :cond_1
    return-object p2
.end method

.method public final i(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lr4/za4;
    .locals 7

    invoke-static {}, Lr4/pb4;->z0()Lr4/za4;

    move-result-object v6

    iget-object v0, p0, Lr4/s;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/s;->G:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lr4/za4;->g0(Ljava/lang/String;)Lr4/za4;

    :cond_0
    iget-boolean v0, p0, Lr4/s;->F:Z

    invoke-static {p1, v0}, Lr4/s;->p(Landroid/content/Context;Z)Lr4/v0;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lr4/s;->s(Lr4/v0;Lr4/za4;Landroid/view/View;Landroid/app/Activity;Z)V

    return-object v6
.end method

.method public final j(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lr4/za4;
    .locals 7

    invoke-static {}, Lr4/pb4;->z0()Lr4/za4;

    move-result-object v6

    iget-object v0, p0, Lr4/s;->G:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lr4/za4;->g0(Ljava/lang/String;)Lr4/za4;

    iget-boolean v0, p0, Lr4/s;->F:Z

    invoke-static {p1, v0}, Lr4/s;->p(Landroid/content/Context;Z)Lr4/v0;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lr4/s;->s(Lr4/v0;Lr4/za4;Landroid/view/View;Landroid/app/Activity;Z)V

    return-object v6
.end method

.method public final k(Landroid/view/MotionEvent;)Lr4/x0;
    .locals 4

    sget-object v0, Lr4/r;->E:Lr4/v0;

    const-string v1, "lJSjzU0WHYWPVV9sbEMt+ajOnNQwNtdM0PEq4BwIHEoSxWMr7EQ/IWk1GxHpKsqd"

    const-string v2, "fOkIRsWNRFrLLiTxAAtymkQwvThROsAenMGWOswUGPc="

    invoke-virtual {v0, v1, v2}, Lr4/v0;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lr4/x0;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    iget-object v3, p0, Lr4/r;->D:Landroid/util/DisplayMetrics;

    aput-object v3, v2, p1

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lr4/x0;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lr4/m0;

    invoke-direct {v0, p1}, Lr4/m0;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Lr4/m0;

    invoke-direct {p1}, Lr4/m0;-><init>()V

    throw p1
.end method

.method public final l([Ljava/lang/StackTraceElement;)J
    .locals 4

    sget-object v0, Lr4/r;->E:Lr4/v0;

    const-string v1, "FW/4CvJE7gSaOIcNy9aPqAkZHcIOptuimuYgHtkFyrZcR+XexyybvWr2/z62L/0t"

    const-string v2, "gw9HX1g5D/FveKxEJmgn0Xdlo8h06mYt4u8/nHkUo04="

    invoke-virtual {v0, v1, v2}, Lr4/v0;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lr4/n0;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lr4/n0;-><init>(Ljava/lang/String;)V

    iget-object p1, v1, Lr4/n0;->b:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lr4/m0;

    invoke-direct {v0, p1}, Lr4/m0;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Lr4/m0;

    invoke-direct {p1}, Lr4/m0;-><init>()V

    throw p1
.end method

.method public r(Lr4/v0;Landroid/content/Context;Lr4/za4;Lr4/sa4;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/v0;",
            "Landroid/content/Context;",
            "Lr4/za4;",
            "Lr4/sa4;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lr4/v0;->u()I

    move-result p4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lr4/v0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x4000

    invoke-virtual {p3, p1, p2}, Lr4/za4;->q0(J)Lr4/za4;

    return-object v9

    :cond_0
    new-instance v10, Lr4/h1;

    const/16 v6, 0x1b

    const/4 v8, 0x0

    const-string v2, "NK1iwlHEHCICBCLEvTy0TnuhgEeSXovnPs9zKPvVW8trSfaaB+/inefY+5AxSSUI"

    const-string v3, "/qulcnd5BAOc2NixUFmrPgx+DAD1V/hpoK4nowHOBbg="

    move-object v0, v10

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lr4/h1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;IILandroid/content/Context;Lr4/sa4;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lr4/k1;

    sget-wide v5, Lr4/s;->L:J

    const/16 v8, 0x19

    const-string v2, "bwYfemyqKvs+5mX5RaQoUxmdyIG97sQWktW0fw649v7l/u+oM9fVxJ1I47AdFZo9"

    const-string v3, "ue4Q/YADEXoviiBHZurTF9IPPlfQKRVJdzRZ56oggWM="

    move-object v0, v10

    move v7, p4

    invoke-direct/range {v0 .. v8}, Lr4/k1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;JII)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lr4/r1;

    const/4 v6, 0x1

    const-string v2, "FIES3RTkQwHbrKX6yNHRLvjdTy/vAwaHt4NSjNSY8AdC8m3WKKtOY2UmKZKAKB0T"

    const-string v3, "2LDOSJy2Fx9VBMC+bm+0OJly9nmnJoeXDwyJmbeZyYc="

    move-object v0, v7

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lr4/r1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lr4/u1;

    const/16 v6, 0x1f

    const-string v2, "6LxD9DBfXSlooSx7/LozL06rdHrjyh7Q8PNFejLJXxiRhvgA5vOTtEhIRp3pKXIi"

    const-string v3, "yXdkchwXd7KBwiPBiUydLTG3hsBC8U5EW7urXPkQrKc="

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lr4/u1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lr4/z1;

    const/16 v6, 0x21

    const-string v2, "kgLg33QaU762V6pmSw9NTYQDT3UN+SfZqKWL+LtHgczBAmljOlYdBxhmK655CLWm"

    const-string v3, "WLzuG2U+Kkbg0oKQlrLQGRQCiSGGQTHe1FZJKw3vRH0="

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lr4/z1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lr4/g1;

    const/16 v6, 0x1d

    const-string v2, "Cm/m2hUfCdldkdMMT3yEm1sAGuFpKVfLQblDoR20XcK7ttTDkHIz3fwaKTv7az9S"

    const-string v3, "aEm/NgN//tNFhysboe/lIhu1ib9P4g8tTm8w79YCsSs="

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lr4/g1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;IILandroid/content/Context;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lr4/i1;

    const/4 v6, 0x5

    const-string v2, "BEk7ZnZgUEtCcnEVmnqrsudDaU91B7wv3jOIcYFOdixfCZNd4CeUtXw9CNec1bEk"

    const-string v3, "yo4aeX8SQAYiyb+wCfW6Y7Ut6lHDx7k9wp/IaZ/McDY="

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lr4/i1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lr4/q1;

    const/16 v6, 0xc

    const-string v2, "haIuUvChZNHM9MeHv9WrHlihODeJsTzWhRoU3l/WedulIO/DPlHeipCgsdOhWEK6"

    const-string v3, "2q9SJ42xLZKaCbpMEBENFcJEqDDES1vvcaask6iD3co="

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lr4/q1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lr4/s1;

    const/4 v6, 0x3

    const-string v2, "0nCS1/lIiwmVLmY4a37W/6SChW3s76Q3PykiLxRk0eA7B+gs2O43l0EwWtwdYppM"

    const-string v3, "NOQ7v89FdlqbWITe5fQxaJU2MeOCrxMPjMVtpwyCEdc="

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lr4/s1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lr4/j1;

    const/16 v6, 0x2c

    const-string v2, "BZSpo1ki7Qq4VpNbKNY5xp3ObP5b46iKtLhMqj95i84Sl1pKZG1hW1hXSXh30EEu"

    const-string v3, "LLuZlwuRYspGUGo7OZU51ciMYYFQ89K2r1TLDzvNq9k="

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lr4/j1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lr4/n1;

    const/16 v6, 0x16

    const-string v2, "A1tPgHG2ugzZJCs1M+dp+hmS1POsS+eh/W2v7YCpLDG/34A+E/oOE4ZeCFsAYJwW"

    const-string v3, "qStL+/rRmChGKiFwdmBpG5d//S+c8NqJKVwR4OiL/ms="

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lr4/n1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lr4/a2;

    const/16 v6, 0x30

    const-string v2, "TDjQ/ClZ1A6U11LRle5Q8IpNZYzzk0FLHirJ3MQW6+Xmi/90o6gFxPcIONwzxlWm"

    const-string v3, "ZlhR2acRJ5DFhes+PG5pnG7AissVCA1YeE0si8KUOuk="

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lr4/a2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lr4/f1;

    const/16 v6, 0x31

    const-string v2, "pECbn1i7ArZz8HseR71ZVkvFfTp84DNv2haWC1WmGQudMO74UcIxEa2NyELtzZhK"

    const-string v3, "LbaQh8VAFWEQeupBiMdSh8EgMse5yKT8p6jkCYTG+aQ="

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lr4/f1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lr4/x1;

    const/16 v6, 0x33

    const-string v2, "DVrAFpWxz2kcLonXDVqzAxxY5qZgb6+MyY8HJZUy9HF2czdhCSx5Lbv7dDVJMgy/"

    const-string v3, "AdToINYaWmfqYE6WezllyxILgCbRf0l/sf/vZralbBA="

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lr4/x1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lr4/v1;

    const/16 v6, 0x3d

    const-string v2, "QXlICfiT7SVSRUb0DD1a74y++UqnSLMKlPOXAn9FNLrl7qN9uprYrk5dswjj/dLi"

    const-string v3, "yqGfvaGOT1fOScq8M0g9vywM6jvcTWdjxf27npfqtn0="

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lr4/v1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p2, v0, :cond_1

    sget-object p2, Lr4/rz;->W1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lr4/p1;

    const/16 v6, 0xb

    sget-object v7, Lr4/s;->M:Lr4/x;

    const-string v2, "E20AdmxNj0iK7Vx72nHXXjWnsmv4FUkyxC/Oztwx6eZIzlENIrQYdkN17JfC0Q1q"

    const-string v3, "rY9DNDEvlJE2YV76YVSJLP4cBUy/u1xcBXUcMxb1h8o="

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lr4/p1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;IILr4/x;)V

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object p2, Lr4/rz;->U1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lr4/t1;

    const/16 v6, 0x49

    const-string v2, "Md0NasjzX5Dv6RV9gbRrdbbQw799E9EBpEgmAwiNqi/RiG7V51y0yTZI5hLTRiUF"

    const-string v3, "4FqMwpBmkecZ5KuntXganMUU8jtWDsP5C5fiOE4sCtY="

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lr4/t1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance p2, Lr4/o1;

    const/16 v6, 0x4c

    const-string v2, "Mx1UeFqV1fjeaaqnMs31Cpnz92KBTGXH/Fg2ftteXVEThFuI1yrtq0+LdsZyqokl"

    const-string v3, "Yj2yffKjPUt0Mx1uRMPIz4KPVLEfX/KYQGpvpNjX0eY="

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lr4/o1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v9
.end method

.method public final s(Lr4/v0;Lr4/za4;Landroid/view/View;Landroid/app/Activity;Z)V
    .locals 14

    move-object v9, p1

    move-object/from16 v10, p2

    invoke-virtual {p1}, Lr4/v0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x4000

    invoke-virtual {v10, v0, v1}, Lr4/za4;->q0(J)Lr4/za4;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/concurrent/Callable;

    new-instance v1, Lr4/m1;

    invoke-direct {v1, p1, v10}, Lr4/m1;-><init>(Lr4/v0;Lr4/za4;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v13, p0

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p2}, Lr4/s;->u(Lr4/v0;Lr4/za4;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lr4/v0;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move-object v13, p0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lr4/v0;->u()I

    move-result v12

    new-instance v0, Lr4/m1;

    invoke-direct {v0, p1, v10}, Lr4/m1;-><init>(Lr4/v0;Lr4/za4;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lr4/r1;

    const/4 v6, 0x1

    const-string v2, "FIES3RTkQwHbrKX6yNHRLvjdTy/vAwaHt4NSjNSY8AdC8m3WKKtOY2UmKZKAKB0T"

    const-string v3, "2LDOSJy2Fx9VBMC+bm+0OJly9nmnJoeXDwyJmbeZyYc="

    move-object v0, v7

    move-object v1, p1

    move-object/from16 v4, p2

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lr4/r1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lr4/k1;

    sget-wide v5, Lr4/s;->L:J

    const/16 v8, 0x19

    const-string v2, "bwYfemyqKvs+5mX5RaQoUxmdyIG97sQWktW0fw649v7l/u+oM9fVxJ1I47AdFZo9"

    const-string v3, "ue4Q/YADEXoviiBHZurTF9IPPlfQKRVJdzRZ56oggWM="

    move-object v0, v13

    move v7, v12

    invoke-direct/range {v0 .. v8}, Lr4/k1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;JII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lr4/j1;

    const/16 v6, 0x2c

    const-string v2, "BZSpo1ki7Qq4VpNbKNY5xp3ObP5b46iKtLhMqj95i84Sl1pKZG1hW1hXSXh30EEu"

    const-string v3, "LLuZlwuRYspGUGo7OZU51ciMYYFQ89K2r1TLDzvNq9k="

    move-object v0, v7

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lr4/j1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lr4/q1;

    const/16 v6, 0xc

    const-string v2, "haIuUvChZNHM9MeHv9WrHlihODeJsTzWhRoU3l/WedulIO/DPlHeipCgsdOhWEK6"

    const-string v3, "2q9SJ42xLZKaCbpMEBENFcJEqDDES1vvcaask6iD3co="

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lr4/q1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lr4/s1;

    const/4 v6, 0x3

    const-string v2, "0nCS1/lIiwmVLmY4a37W/6SChW3s76Q3PykiLxRk0eA7B+gs2O43l0EwWtwdYppM"

    const-string v3, "NOQ7v89FdlqbWITe5fQxaJU2MeOCrxMPjMVtpwyCEdc="

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lr4/s1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lr4/n1;

    const/16 v6, 0x16

    const-string v2, "A1tPgHG2ugzZJCs1M+dp+hmS1POsS+eh/W2v7YCpLDG/34A+E/oOE4ZeCFsAYJwW"

    const-string v3, "qStL+/rRmChGKiFwdmBpG5d//S+c8NqJKVwR4OiL/ms="

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lr4/n1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lr4/i1;

    const/4 v6, 0x5

    const-string v2, "BEk7ZnZgUEtCcnEVmnqrsudDaU91B7wv3jOIcYFOdixfCZNd4CeUtXw9CNec1bEk"

    const-string v3, "yo4aeX8SQAYiyb+wCfW6Y7Ut6lHDx7k9wp/IaZ/McDY="

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lr4/i1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lr4/a2;

    const/16 v6, 0x30

    const-string v2, "TDjQ/ClZ1A6U11LRle5Q8IpNZYzzk0FLHirJ3MQW6+Xmi/90o6gFxPcIONwzxlWm"

    const-string v3, "ZlhR2acRJ5DFhes+PG5pnG7AissVCA1YeE0si8KUOuk="

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lr4/a2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lr4/f1;

    const/16 v6, 0x31

    const-string v2, "pECbn1i7ArZz8HseR71ZVkvFfTp84DNv2haWC1WmGQudMO74UcIxEa2NyELtzZhK"

    const-string v3, "LbaQh8VAFWEQeupBiMdSh8EgMse5yKT8p6jkCYTG+aQ="

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lr4/f1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lr4/x1;

    const/16 v6, 0x33

    const-string v2, "DVrAFpWxz2kcLonXDVqzAxxY5qZgb6+MyY8HJZUy9HF2czdhCSx5Lbv7dDVJMgy/"

    const-string v3, "AdToINYaWmfqYE6WezllyxILgCbRf0l/sf/vZralbBA="

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lr4/x1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lr4/w1;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/16 v6, 0x2d

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const-string v2, "FW/4CvJE7gSaOIcNy9aPqAkZHcIOptuimuYgHtkFyrZcR+XexyybvWr2/z62L/0t"

    const-string v3, "gw9HX1g5D/FveKxEJmgn0Xdlo8h06mYt4u8/nHkUo04="

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lr4/w1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II[Ljava/lang/StackTraceElement;)V

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lr4/b2;

    const/16 v6, 0x39

    const-string v2, "Rh7wPiyt0Q0zAefasWAQ/36LhULiVi3U1eCO9K34euxkll+3xBb3q2iaqyDuAy33"

    const-string v3, "Kmv9uscZLQkY9DcwgermeDphrIGnHnQJYdRAudw6Thg="

    move-object v0, v8

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lr4/b2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;IILandroid/view/View;)V

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lr4/v1;

    const/16 v6, 0x3d

    const-string v2, "QXlICfiT7SVSRUb0DD1a74y++UqnSLMKlPOXAn9FNLrl7qN9uprYrk5dswjj/dLi"

    const-string v3, "yqGfvaGOT1fOScq8M0g9vywM6jvcTWdjxf27npfqtn0="

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lr4/v1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lr4/rz;->I1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v13, Lr4/d1;

    const/16 v6, 0x3e

    const-string v2, "h8EVC95dwYnFQkP2MhkDIC/tXo0ux4wCcOlQmWH2MzSwaPfcZ/24kCQO32wp6PV0"

    const-string v3, "0H2C2EeQe84lGZgr+dAw2Fmmx+KWvzkBWNdP/wQOLp8="

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v4, p2

    move v5, v12

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lr4/d1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;IILandroid/view/View;Landroid/app/Activity;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p5, :cond_1

    sget-object v0, Lr4/rz;->K1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v8, Lr4/y1;

    const/16 v6, 0x35

    move-object v13, p0

    iget-object v7, v13, Lr4/s;->H:Lr4/c1;

    const-string v2, "BF4UgSmqTS0MLe4qitQi/hj1jIQ+0vLIJEn32u0TtZn0VL9j15ZHt04Do4ADy833"

    const-string v3, "Yw5N4XiXXiTiwJwrJ8hW/AfPIwRQ2KMfiYKb9xu8vYQ="

    move-object v0, v8

    move-object v1, p1

    move-object/from16 v4, p2

    move v5, v12

    invoke-direct/range {v0 .. v7}, Lr4/y1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;IILr4/c1;)V

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object v0, v11

    :goto_1
    invoke-static {v0}, Lr4/s;->t(Ljava/util/List;)V

    return-void
.end method

.method public final declared-synchronized u(Lr4/v0;Lr4/za4;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/r;->a:Landroid/view/MotionEvent;

    iget-object v1, p0, Lr4/r;->D:Landroid/util/DisplayMetrics;

    invoke-static {p1, v0, v1}, Lr4/s;->q(Lr4/v0;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lr4/x0;

    move-result-object p1

    iget-object v0, p1, Lr4/x0;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lr4/za4;->m0(J)Lr4/za4;

    :cond_0
    iget-object v0, p1, Lr4/x0;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lr4/za4;->n0(J)Lr4/za4;

    :cond_1
    iget-object v0, p1, Lr4/x0;->d:Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lr4/za4;->o0(J)Lr4/za4;

    :cond_2
    iget-boolean v0, p0, Lr4/r;->C:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lr4/x0;->e:Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lr4/za4;->A0(J)Lr4/za4;

    :cond_3
    iget-object p1, p1, Lr4/x0;->f:Ljava/lang/Long;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lr4/za4;->B0(J)Lr4/za4;
    :try_end_0
    .catch Lr4/m0; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    :cond_4
    :goto_0
    :try_start_1
    invoke-static {}, Lr4/mb4;->C()Lr4/lb4;

    move-result-object p1

    iget-wide v0, p0, Lr4/r;->d:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_6

    iget-object v0, p0, Lr4/r;->D:Landroid/util/DisplayMetrics;

    invoke-static {v0}, Lr4/y0;->g(Landroid/util/DisplayMetrics;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lr4/r;->u:D

    iget-object v5, p0, Lr4/r;->D:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2, v5}, Lr4/y0;->h(DILandroid/util/DisplayMetrics;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lr4/lb4;->L(J)Lr4/lb4;

    iget v0, p0, Lr4/r;->z:F

    iget v1, p0, Lr4/r;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v5, p0, Lr4/r;->D:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2, v5}, Lr4/y0;->h(DILandroid/util/DisplayMetrics;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lr4/lb4;->P(J)Lr4/lb4;

    iget v0, p0, Lr4/r;->A:F

    iget v1, p0, Lr4/r;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v5, p0, Lr4/r;->D:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2, v5}, Lr4/y0;->h(DILandroid/util/DisplayMetrics;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lr4/lb4;->Q(J)Lr4/lb4;

    iget v0, p0, Lr4/r;->x:F

    float-to-double v0, v0

    iget-object v5, p0, Lr4/r;->D:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2, v5}, Lr4/y0;->h(DILandroid/util/DisplayMetrics;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lr4/lb4;->U(J)Lr4/lb4;

    iget v0, p0, Lr4/r;->y:F

    float-to-double v0, v0

    iget-object v5, p0, Lr4/r;->D:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2, v5}, Lr4/y0;->h(DILandroid/util/DisplayMetrics;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lr4/lb4;->V(J)Lr4/lb4;

    iget-boolean v0, p0, Lr4/r;->C:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lr4/r;->a:Landroid/view/MotionEvent;

    if-eqz v0, :cond_6

    iget v1, p0, Lr4/r;->x:F

    iget v5, p0, Lr4/r;->z:F

    sub-float/2addr v1, v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lr4/r;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr v1, v0

    float-to-double v0, v1

    iget-object v5, p0, Lr4/r;->D:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2, v5}, Lr4/y0;->h(DILandroid/util/DisplayMetrics;)J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_5

    invoke-virtual {p1, v0, v1}, Lr4/lb4;->S(J)Lr4/lb4;

    :cond_5
    iget v0, p0, Lr4/r;->y:F

    iget v1, p0, Lr4/r;->A:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lr4/r;->a:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lr4/r;->a:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v5, p0, Lr4/r;->D:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2, v5}, Lr4/y0;->h(DILandroid/util/DisplayMetrics;)J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_6

    invoke-virtual {p1, v0, v1}, Lr4/lb4;->T(J)Lr4/lb4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :try_start_2
    iget-object v0, p0, Lr4/r;->a:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lr4/s;->k(Landroid/view/MotionEvent;)Lr4/x0;

    move-result-object v0

    iget-object v1, v0, Lr4/x0;->b:Ljava/lang/Long;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lr4/lb4;->v(J)Lr4/lb4;

    :cond_7
    iget-object v1, v0, Lr4/x0;->c:Ljava/lang/Long;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lr4/lb4;->x(J)Lr4/lb4;

    :cond_8
    iget-object v1, v0, Lr4/x0;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lr4/lb4;->E(J)Lr4/lb4;

    iget-boolean v1, p0, Lr4/r;->C:Z

    if-eqz v1, :cond_13

    iget-object v1, v0, Lr4/x0;->f:Ljava/lang/Long;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lr4/lb4;->z(J)Lr4/lb4;

    :cond_9
    iget-object v1, v0, Lr4/x0;->e:Ljava/lang/Long;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lr4/lb4;->C(J)Lr4/lb4;

    :cond_a
    iget-object v1, v0, Lr4/x0;->g:Ljava/lang/Long;

    const/4 v5, 0x2

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v3

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    goto :goto_1

    :cond_b
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Lr4/lb4;->W(I)Lr4/lb4;

    :cond_c
    iget-wide v6, p0, Lr4/r;->k:J

    cmp-long v1, v6, v3

    if-lez v1, :cond_f

    iget-object v1, p0, Lr4/r;->D:Landroid/util/DisplayMetrics;

    invoke-static {v1}, Lr4/y0;->g(Landroid/util/DisplayMetrics;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-wide v6, p0, Lr4/r;->t:J

    long-to-double v6, v6

    iget-wide v8, p0, Lr4/r;->k:J
    :try_end_2
    .catch Lr4/m0; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_2

    :cond_d
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lr4/lb4;->A(J)Lr4/lb4;

    goto :goto_3

    :cond_e
    invoke-virtual {p1}, Lr4/lb4;->B()Lr4/lb4;

    :goto_3
    iget-wide v6, p0, Lr4/r;->s:J

    long-to-double v6, v6

    iget-wide v8, p0, Lr4/r;->k:J
    :try_end_3
    .catch Lr4/m0; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    long-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lr4/lb4;->D(J)Lr4/lb4;

    :cond_f
    iget-object v1, v0, Lr4/x0;->j:Ljava/lang/Long;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lr4/lb4;->J(J)Lr4/lb4;

    :cond_10
    iget-object v1, v0, Lr4/x0;->k:Ljava/lang/Long;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lr4/lb4;->I(J)Lr4/lb4;

    :cond_11
    iget-object v0, v0, Lr4/x0;->l:Ljava/lang/Long;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v6, v0, v3

    if-eqz v6, :cond_12

    const/4 v2, 0x2

    :cond_12
    invoke-virtual {p1, v2}, Lr4/lb4;->X(I)Lr4/lb4;
    :try_end_4
    .catch Lr4/m0; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :cond_13
    :try_start_5
    iget-wide v0, p0, Lr4/r;->r:J

    cmp-long v2, v0, v3

    if-lez v2, :cond_14

    invoke-virtual {p1, v0, v1}, Lr4/lb4;->K(J)Lr4/lb4;

    :cond_14
    invoke-virtual {p1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/mb4;

    invoke-virtual {p2, p1}, Lr4/za4;->I(Lr4/mb4;)Lr4/za4;

    iget-wide v0, p0, Lr4/r;->d:J

    cmp-long p1, v0, v3

    if-lez p1, :cond_15

    invoke-virtual {p2, v0, v1}, Lr4/za4;->E0(J)Lr4/za4;

    :cond_15
    iget-wide v0, p0, Lr4/r;->k:J

    cmp-long p1, v0, v3

    if-lez p1, :cond_16

    invoke-virtual {p2, v0, v1}, Lr4/za4;->D0(J)Lr4/za4;

    :cond_16
    iget-wide v0, p0, Lr4/r;->p:J

    cmp-long p1, v0, v3

    if-lez p1, :cond_17

    invoke-virtual {p2, v0, v1}, Lr4/za4;->C0(J)Lr4/za4;

    :cond_17
    iget-wide v0, p0, Lr4/r;->q:J

    cmp-long p1, v0, v3

    if-lez p1, :cond_18

    invoke-virtual {p2, v0, v1}, Lr4/za4;->v(J)Lr4/za4;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_18
    :try_start_6
    iget-object p1, p0, Lr4/r;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_19

    invoke-virtual {p2}, Lr4/za4;->K()Lr4/za4;

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p1, :cond_19

    sget-object v1, Lr4/r;->E:Lr4/v0;

    iget-object v2, p0, Lr4/r;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    iget-object v3, p0, Lr4/r;->D:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2, v3}, Lr4/s;->q(Lr4/v0;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lr4/x0;

    move-result-object v1

    invoke-static {}, Lr4/mb4;->C()Lr4/lb4;

    move-result-object v2

    iget-object v3, v1, Lr4/x0;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lr4/lb4;->v(J)Lr4/lb4;

    iget-object v1, v1, Lr4/x0;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lr4/lb4;->x(J)Lr4/lb4;

    invoke-virtual {v2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v1

    check-cast v1, Lr4/mb4;

    invoke-virtual {p2, v1}, Lr4/za4;->J(Lr4/mb4;)Lr4/za4;
    :try_end_6
    .catch Lr4/m0; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_19
    monitor-exit p0

    return-void

    :catch_2
    :try_start_7
    invoke-virtual {p2}, Lr4/za4;->K()Lr4/za4;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method
