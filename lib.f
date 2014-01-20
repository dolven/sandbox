      SUBROUTINE rout1
      write(*,*)'rout1 gets called'
      END
      
      SUBROUTINE rout2
      do i=1,10
         write(*,*) 'i= ',i
      enddo
      end

      SUBROUTINE rout3
      do i=1,20
         write(*,*) 'i= ',i
      enddo
      end
