      program prog
      dimension ival(5),val(5)
      do i=1,5
         ival(i) = i
         val(i) = 3.428739*i
         write(*,*) ival(i),val(i)
      enddo
      write(*,*) ' '
      call sub_1(ival,val)
      end

C neet to insert commnets
C so I can try and grep them out
! and I need some of these comments as well

      subroutine sub_1(ival,val)
      dimension ival(5),val(5)
      do i=1,4
         val(i) = real(ival(i))/real(ival(i+1))
         write(*,*) ival(i),val(i)
      enddo
      write(*,*) ' '
      call sub_2(ival,val)
      end

      subroutine sub_2(value1,value2)
      dimension value1(5),value2(5)
      do i=1,5
         write(*,*) value1(i),value2(i)
      enddo
      end
